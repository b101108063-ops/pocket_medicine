import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'data.dart'; // 引入您的資料檔
import 'calculators.dart'; // 引入您的計算機檔

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Medicine',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          elevation: 0,
          centerTitle: true,
        ),
        dividerColor: Colors.transparent,
      ),
      home: const ChapterListScreen(),
    );
  }
}

// --- 首頁：章節列表 (支援折疊分組與搜尋) ---
class ChapterListScreen extends StatefulWidget {
  const ChapterListScreen({super.key});

  @override
  State<ChapterListScreen> createState() => _ChapterListScreenState();
}

class _ChapterListScreenState extends State<ChapterListScreen> {
  String _searchQuery = "";

  // 核心邏輯：過濾並分組資料
  Map<String, List<Map<String, dynamic>>> _getGroupedData() {
    final filteredData = pocketMedicineData.where((item) {
      final title = item['title'].toString().toLowerCase();
      final subtitle = item['subtitle'].toString().toLowerCase();
      final query = _searchQuery.toLowerCase();
      return title.contains(query) || subtitle.contains(query);
    }).toList();

    Map<String, List<Map<String, dynamic>>> grouped = {};

    // 定義顯示順序
    List<String> order = [
      "🚨 危急徵象與症狀",
      "🧪 實驗室數值異常",
      "❤️ 心臟內科",
      "🫘 腎臟內科",
      "🫁 胸腔內科",
      "🥨 胃腸肝膽科",
      "🩸 血液腫瘤科",
      "🦠 感染科",
      "🍬 內分泌科",
      "🏥 一般醫學科",
    ];

    for (var key in order) {
      grouped[key] = [];
    }

    for (var item in filteredData) {
      String groupName = item['group'] ?? "其他";
      if (!grouped.containsKey(groupName)) {
        grouped[groupName] = [];
      }
      grouped[groupName]!.add(item);
    }

    grouped.removeWhere((key, value) => value.isEmpty);

    return grouped;
  }

  Color _getGroupColor(String groupName) {
    if (groupName.contains("危急")) return Colors.redAccent;
    if (groupName.contains("實驗室")) return Colors.blueAccent;

    if (groupName.contains("心臟")) return Colors.pinkAccent;
    if (groupName.contains("腎臟")) return Colors.indigoAccent;
    if (groupName.contains("胸腔")) return Colors.orangeAccent;
    if (groupName.contains("胃腸")) return Colors.greenAccent;
    if (groupName.contains("血液")) return Colors.red;
    if (groupName.contains("感染")) return Colors.purpleAccent;
    if (groupName.contains("內分泌")) return Colors.cyanAccent;

    return Colors.grey;
  }

  Color _getIconColor(String id) {
    if (id.contains("shock") || id.contains("combative") || id.contains("code"))
      return Colors.red;
    if (id.contains("cardio") ||
        id.contains("acs") ||
        id.contains("htn") ||
        id.contains("arrhythmia"))
      return Colors.pinkAccent;
    if (id.contains("chest") || id.contains("pulm") || id.contains("dyspnea"))
      return Colors.orange;
    if (id.contains("gi") ||
        id.contains("abd") ||
        id.contains("gib") ||
        id.contains("hep"))
      return Colors.green;
    if (id.contains("nephro") ||
        id.contains("aki") ||
        id.contains("ckd") ||
        id.contains("sodium") ||
        id.contains("potassium") ||
        id.contains("acid"))
      return Colors.lightBlue;
    if (id.contains("inf") ||
        id.contains("sepsis") ||
        id.contains("fever") ||
        id.contains("id"))
      return Colors.purpleAccent;
    if (id.contains("neuro") ||
        id.contains("stroke") ||
        id.contains("conscious") ||
        id.contains("seizure"))
      return Colors.deepPurple;
    if (id.contains("hema")) return Colors.redAccent;
    return Colors.teal;
  }

  String _getIconText(String id) {
    if (id.contains("shock")) return "SK";
    if (id.contains("acs")) return "CV";
    if (id.contains("dyspnea")) return "Lu";
    if (id.contains("gib")) return "GI";
    if (id.contains("potassium")) return "K+";
    if (id.contains("sodium")) return "Na";
    if (id.contains("acid")) return "AB";
    if (id.contains("stroke")) return "NS";
    if (id.contains("aki")) return "AK";
    return id.substring(0, 2).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final groupedData = _getGroupedData();
    final bool isSearching = _searchQuery.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'On Call Guide',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Created by RockyNow',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white54,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.calculate_outlined),
            tooltip: "醫學計算機",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CalculatorListScreen(),
                ),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              decoration: InputDecoration(
                hintText: '搜尋 (例如: Shock, K, ACS...)',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xFF2C2C2C),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 30, top: 8),
        itemCount: groupedData.keys.length + 1,
        itemBuilder: (context, index) {
          if (index == groupedData.keys.length) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Center(
                child: Text(
                  "Data Version: 2026.01.29",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                    letterSpacing: 1.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            );
          }

          String groupName = groupedData.keys.elementAt(index);
          List<Map<String, dynamic>> items = groupedData[groupName]!;
          Color groupColor = _getGroupColor(groupName);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            color: const Color(0xFF252525),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: groupColor.withOpacity(0.3), width: 1),
            ),
            child: ExpansionTile(
              key: Key(groupName + (isSearching ? "_search" : "")),
              initiallyExpanded: isSearching ? true : false,
              shape: Border.all(color: Colors.transparent),
              leading: Container(
                width: 4,
                height: 24,
                decoration: BoxDecoration(
                  color: groupColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              title: Text(
                groupName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: groupColor,
                  letterSpacing: 0.5,
                ),
              ),
              children: items.map((data) {
                final iconColor = _getIconColor(data['id']);
                final iconText = _getIconText(data['id']);

                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    leading: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        iconText,
                        style: TextStyle(
                          color: iconColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    title: Text(
                      data['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        data['subtitle'],
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey[700],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChapterDetailScreen(chapterData: data),
                        ),
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}

// --- 內文詳情頁 (支援 Markdown + 表格化排版) ---
class ChapterDetailScreen extends StatelessWidget {
  final Map<String, dynamic> chapterData;

  const ChapterDetailScreen({super.key, required this.chapterData});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> content = chapterData['content'];
    final String lastUpdate = chapterData['lastUpdate'] ?? '';
    final String? introText = content['intro'];
    final List diagnosisList = content['diagnosis'];
    final List treatment = content['treatment'];

    final Color themeColor = _getIconColor(chapterData['id']);

    final List<String> criticalItems = diagnosisList
        .where(
          (item) =>
              item.toString().contains("🚨") || item.toString().contains("危急"),
        )
        .map((e) => e.toString())
        .toList();

    final List<String> workupItems = diagnosisList
        .where(
          (item) =>
              !item.toString().contains("🚨") &&
              !item.toString().contains("危急"),
        )
        .map((e) => e.toString())
        .toList();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            chapterData['title'],
            style: const TextStyle(fontSize: 18),
          ),
          bottom: TabBar(
            labelColor: themeColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: themeColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(icon: Icon(Icons.analytics_outlined), text: "評估與鑑別"),
              Tab(icon: Icon(Icons.medication_outlined), text: "治療與處置"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (criticalItems.isNotEmpty)
                    _buildMarkdownSection(
                      context,
                      title: "危急排除 / 警示",
                      items: criticalItems,
                      titleColor: Colors.redAccent,
                      bgColor: Colors.red.withOpacity(0.1),
                      icon: Icons.warning_amber_rounded,
                    ),
                  if (criticalItems.isNotEmpty) const SizedBox(height: 16),
                  if (workupItems.isNotEmpty)
                    _buildMarkdownSection(
                      context,
                      title: "檢查、公式與鑑別",
                      items: workupItems,
                      titleColor: themeColor,
                      bgColor: const Color(0xFF252525),
                      icon: Icons.assignment_turned_in_outlined,
                    ),
                  if (introText != null && introText.isNotEmpty) ...[
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(12),
                        border: Border(
                          left: BorderSide(color: themeColor, width: 4),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.lightbulb_outline,
                                size: 18,
                                color: themeColor,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Clinical Note",
                                style: TextStyle(
                                  color: themeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          MarkdownBody(
                            data: introText,
                            styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(
                                fontSize: 15,
                                height: 1.6,
                                color: Colors.white70,
                              ),
                              strong: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              listBullet: TextStyle(
                                color: themeColor,
                                fontSize: 16,
                              ),
                              // 強制引言透明
                              blockquote: const TextStyle(
                                fontSize: 15,
                                height: 1.6,
                                color: Colors.white70,
                              ),
                              blockquoteDecoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              blockquotePadding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (lastUpdate.isNotEmpty) _buildDateFooter(lastUpdate),
                ],
              ),
            ),

            ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: treatment.length + (lastUpdate.isNotEmpty ? 1 : 0),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                if (index == treatment.length) {
                  return _buildDateFooter(lastUpdate);
                }

                final section = treatment[index];
                final items = section['items'] as List;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        border: Border.all(
                          color: themeColor.withOpacity(0.5),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_pharmacy,
                            size: 18,
                            color: themeColor,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              section['category'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: themeColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        border: Border(
                          left: BorderSide(
                            color: themeColor.withOpacity(0.3),
                            width: 1,
                          ),
                          right: BorderSide(
                            color: themeColor.withOpacity(0.3),
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: themeColor.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Column(
                        children: items.asMap().entries.map((entry) {
                          int idx = entry.key;
                          var item = entry.value;
                          bool isLast = idx == items.length - 1;

                          return Container(
                            decoration: BoxDecoration(
                              border: isLast
                                  ? null
                                  : Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                    ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: MarkdownBody(
                                      data: item['drug'],
                                      styleSheet: MarkdownStyleSheet(
                                        p: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          height: 1.5, // 統一高度: 1.5
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  // 分隔線
                                  Container(
                                    width: 1,
                                    height: 20,
                                    color: Colors.grey.withOpacity(0.3),
                                    margin: const EdgeInsets.only(
                                      top: 4,
                                    ), // 微調: 4 (對齊中心)
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: MarkdownBody(
                                      data: item['dose'],
                                      styleSheet: MarkdownStyleSheet(
                                        p: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white70,
                                          height: 1.5, // 統一高度: 1.5
                                        ),
                                        strong: const TextStyle(
                                          color: Colors.amberAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        // 強制引言透明
                                        blockquote: const TextStyle(
                                          fontSize: 15,
                                          height: 1.5,
                                          color: Colors.white70,
                                        ),
                                        blockquoteDecoration:
                                            const BoxDecoration(
                                              color: Colors.transparent,
                                            ),
                                        blockquotePadding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarkdownSection(
    BuildContext context, {
    required String title,
    required List<String> items,
    required Color titleColor,
    required Color bgColor,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: titleColor.withOpacity(0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(
              children: [
                Icon(icon, color: titleColor, size: 20),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ),
          Divider(color: titleColor.withOpacity(0.2), height: 1),
          ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 12),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MarkdownBody(
                  data: items[index],
                  styleSheet: MarkdownStyleSheet(
                    p: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                    strong: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: titleColor,
                    ),
                    // 強制引言透明
                    blockquote: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                    blockquoteDecoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    blockquotePadding: EdgeInsets.zero,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDateFooter(String date) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.edit_calendar, size: 14, color: Colors.grey[700]),
          const SizedBox(width: 6),
          Text(
            "最後更新: $date",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Color _getIconColor(String id) {
    if (id.contains("shock") || id.contains("combative")) return Colors.red;
    if (id.contains("cardio") ||
        id.contains("acs") ||
        id.contains("htn") ||
        id.contains("arrhythmia"))
      return Colors.pinkAccent;
    if (id.contains("chest") || id.contains("pulm") || id.contains("dyspnea"))
      return Colors.orange;
    if (id.contains("gi") ||
        id.contains("abd") ||
        id.contains("gib") ||
        id.contains("hep"))
      return Colors.green;
    if (id.contains("nephro") ||
        id.contains("aki") ||
        id.contains("ckd") ||
        id.contains("sodium") ||
        id.contains("potassium") ||
        id.contains("acid"))
      return Colors.lightBlue;
    if (id.contains("inf") ||
        id.contains("sepsis") ||
        id.contains("fever") ||
        id.contains("id"))
      return Colors.purpleAccent;
    if (id.contains("neuro") ||
        id.contains("stroke") ||
        id.contains("conscious") ||
        id.contains("seizure"))
      return Colors.deepPurple;
    if (id.contains("hema")) return Colors.redAccent;
    return Colors.teal;
  }
}
