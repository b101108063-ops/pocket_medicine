import 'package:flutter/material.dart';
import 'dart:math';

// 定義統一的深色系顏色
const Color kBgColor = Color(0xFF121212); // 背景色
const Color kCardColor = Color(0xFF1E1E1E); // 卡片背景
const Color kInputFillColor = Color(0xFF2C2C2C); // 輸入框填充色
const Color kAppBarColor = Color(0xFF1F1F1F); // AppBar 顏色

class CalculatorListScreen extends StatelessWidget {
  const CalculatorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Medical Calculators"),
        backgroundColor: kAppBarColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // --- Gastroenterology (NEW) ---
          _buildSectionHeader("Gastroenterology (胃腸肝膽)"),
          _buildCalcCard(
            context,
            "R-Factor (Liver Injury)",
            "需: ALT, Alk-P (與其正常值上限 ULN)",
            Icons
                .medical_services, // liver_transport_outlined 不存在，改用 medical_services
            Colors.lightGreenAccent,
            const RFactorCalculator(),
          ),
          _buildCalcCard(
            context,
            "Maddrey's Discriminant",
            "需: PT (Patient/Control), Bilirubin",
            Icons.warning_amber,
            Colors.orange,
            const MaddreyCalculator(),
          ),
          _buildCalcCard(
            context,
            "SAAG (腹水梯度)",
            "需: Serum Albumin, Ascites Albumin",
            Icons.opacity,
            Colors.cyanAccent,
            const SAAGCalculator(),
          ),
          _buildCalcCard(
            context,
            "Stool Osmotic Gap",
            "需: Stool Na, Stool K",
            Icons.water_drop_outlined,
            Colors.brown,
            const StoolGapCalculator(),
          ),

          // --- Pulmonary ---
          _buildSectionHeader("Pulmonary (胸腔)"),
          _buildCalcCard(
            context,
            "A-a Gradient",
            "需: Age, PaO2, PaCO2, FiO2",
            Icons.air,
            Colors.lightBlueAccent,
            const AaGradientCalculator(),
          ),
          _buildCalcCard(
            context,
            "Ventilator Mechanics",
            "需: Vt, P-peak, P-plat, PEEP",
            Icons.speed,
            Colors.tealAccent,
            const VentMechanicsCalculator(),
          ),
          _buildCalcCard(
            context,
            "RSBI (Weaning)",
            "需: RR, Vt (mL)",
            Icons.timer_off_outlined,
            Colors.greenAccent,
            const RSBICalculator(),
          ),

          // --- Nephrology ---
          _buildSectionHeader("Nephrology (腎臟)"),
          _buildCalcCard(
            context,
            "Acid-Base Analysis",
            "需: pH, PaCO2, HCO3, Na, Cl, Alb",
            Icons.science,
            Colors.indigoAccent,
            const AcidBaseCalculator(),
          ),
          _buildCalcCard(
            context,
            "FeNa (鈉排泄率)",
            "需: Serum Na, Serum Cr, Urine Na, Urine Cr",
            Icons.filter_list,
            Colors.blueAccent,
            const FeNaCalculator(),
          ),
          _buildCalcCard(
            context,
            "FEUrea (尿素排泄率)",
            "需: Serum BUN, Serum Cr, Urine Urea, Urine Cr",
            Icons.opacity,
            Colors.cyanAccent,
            const FeUreaCalculator(),
          ),
          _buildCalcCard(
            context,
            "Creatinine Clearance",
            "需: Age, Weight, Creatinine, Gender",
            Icons.water_drop,
            Colors.lightBlueAccent,
            const CrClCalculator(),
          ),

          // --- Electrolytes ---
          _buildSectionHeader("Electrolytes (電解質)"),
          _buildCalcCard(
            context,
            "Sodium Correction",
            "需: Weight, Serum Na, Gender, Fluids",
            Icons.water_damage,
            Colors.purpleAccent,
            const HyponatremiaCalculator(),
          ),
          _buildCalcCard(
            context,
            "Free Water Deficit",
            "需: Weight, Current Na, Target Na",
            Icons.local_fire_department,
            Colors.orangeAccent,
            const FreeWaterDeficitCalculator(),
          ),
          _buildCalcCard(
            context,
            "TTKG Calculator",
            "需: Urine K, Urine Osm, Serum K, Serum Osm",
            Icons.flash_on,
            Colors.amberAccent,
            const PotassiumCalculator(),
          ),

          // --- Cardiology ---
          _buildSectionHeader("Cardiology (心臟)"),
          _buildCalcCard(
            context,
            "Corrected QT (QTc)",
            "需: QT Interval, Heart Rate",
            Icons.monitor_heart,
            Colors.redAccent,
            const QTcCalculator(),
          ),
          _buildCalcCard(
            context,
            "CHA2DS2-VASc Score",
            "需: Age, Sex, CHF, HTN, DM, Stroke, Vasc",
            Icons.calculate,
            Colors.tealAccent,
            const ChadScoreCalculator(),
          ),

          // --- Hematology ---
          _buildSectionHeader("Hematology (血液)"),
          _buildCalcCard(
            context,
            "CCI Calculator",
            "需: Height, Weight, Pre-PLT, Post-PLT",
            Icons.bloodtype,
            Colors.red,
            const CCICalculator(),
          ),
          _buildCalcCard(
            context,
            "ANC Calculator",
            "需: WBC, Seg, Band",
            Icons.shield_outlined,
            Colors.greenAccent,
            const ANCCalculator(),
          ),

          // --- General ---
          _buildSectionHeader("General (一般)"),
          _buildCalcCard(
            context,
            "Bladder Volume",
            "需: Width, Depth, Height",
            Icons.settings_overscan,
            Colors.yellowAccent,
            const BladderScanCalculator(),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  Widget _buildCalcCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    Widget destination,
  ) {
    return Card(
      color: kCardColor,
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[400],
              height: 1.4,
              fontSize: 13,
            ),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey[600],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
      ),
    );
  }
}

// ===========================================================================
// GI CALCULATORS (NEW)
// ===========================================================================

// 1. R-Factor Calculator
class RFactorCalculator extends StatefulWidget {
  const RFactorCalculator({super.key});
  @override
  State<RFactorCalculator> createState() => _RFactorState();
}

class _RFactorState extends State<RFactorCalculator> {
  final _alt = TextEditingController();
  final _altUln = TextEditingController(text: "40"); // Default ULN
  final _alp = TextEditingController();
  final _alpUln = TextEditingController(text: "120"); // Default ULN
  String _result = "";

  void _calculate() {
    double? alt = double.tryParse(_alt.text);
    double? altUln = double.tryParse(_altUln.text);
    double? alp = double.tryParse(_alp.text);
    double? alpUln = double.tryParse(_alpUln.text);

    if (alt != null && altUln != null && alp != null && alpUln != null) {
      // R = (ALT/ULN) / (ALP/ULN)
      double r = (alt / altUln) / (alp / alpUln);
      String dx = "";

      if (r >= 5) {
        dx = "Hepatocellular (肝細胞型)";
      } else if (r <= 2) {
        dx = "Cholestatic (膽汁淤積型)";
      } else {
        dx = "Mixed Pattern (混合型)";
      }

      setState(() {
        _result = "R Factor = ${r.toStringAsFixed(2)}\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("R-Factor (Liver)"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "ALT (GPT)",
            style: TextStyle(color: Colors.lightGreenAccent),
          ),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_alt, "Patient ALT", "U/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_altUln, "ULN (上限)", "U/L")),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Alk-P", style: TextStyle(color: Colors.lightGreenAccent)),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_alp, "Patient ALP", "U/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_alpUln, "ULN (上限)", "U/L")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate R-Factor"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.lightGreenAccent),
        ],
      ),
    );
  }
}

// 2. Maddrey's Discriminant Function
class MaddreyCalculator extends StatefulWidget {
  const MaddreyCalculator({super.key});
  @override
  State<MaddreyCalculator> createState() => _MaddreyState();
}

class _MaddreyState extends State<MaddreyCalculator> {
  final _pt = TextEditingController();
  final _ptControl = TextEditingController(text: "12");
  final _bili = TextEditingController();
  String _result = "";

  void _calculate() {
    double? pt = double.tryParse(_pt.text);
    double? ptC = double.tryParse(_ptControl.text);
    double? bili = double.tryParse(_bili.text);

    if (pt != null && ptC != null && bili != null) {
      // MDF = 4.6 * (PT - Control) + Bili
      double mdf = 4.6 * (pt - ptC) + bili;
      String dx = "";
      if (mdf >= 32) {
        dx = "嚴重酒精性肝炎 (Severe)\n建議給予類固醇治療 (Prednisolone)";
      } else {
        dx = "非嚴重 (Non-severe)\n支持性療法";
      }

      setState(() {
        _result = "MDF Score = ${mdf.toStringAsFixed(1)}\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Maddrey's Score"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_pt, "Patient PT", "sec")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_ptControl, "Control PT", "sec")),
            ],
          ),
          const SizedBox(height: 16),
          _buildDarkInput(_bili, "Total Bilirubin", "mg/dL"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate MDF"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.orange),
        ],
      ),
    );
  }
}

// 3. SAAG Calculator
class SAAGCalculator extends StatefulWidget {
  const SAAGCalculator({super.key});
  @override
  State<SAAGCalculator> createState() => _SAAGState();
}

class _SAAGState extends State<SAAGCalculator> {
  final _sAlb = TextEditingController();
  final _aAlb = TextEditingController();
  String _result = "";

  void _calculate() {
    double? s = double.tryParse(_sAlb.text);
    double? a = double.tryParse(_aAlb.text);

    if (s != null && a != null) {
      double saag = s - a;
      String dx = "";
      if (saag >= 1.1) {
        dx = "門脈高壓相關 (Portal HTN)\n(Cirrhosis, Heart Failure)";
      } else {
        dx = "非門脈高壓 (Non-Portal)\n(Cancer, TB, Nephrotic)";
      }
      setState(() {
        _result = "SAAG = ${saag.toStringAsFixed(1)} g/dL\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("SAAG Calculation"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDarkInput(_sAlb, "Serum Albumin", "g/dL"),
          const SizedBox(height: 16),
          _buildDarkInput(_aAlb, "Ascites Albumin", "g/dL"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate SAAG"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.cyanAccent),
        ],
      ),
    );
  }
}

// 4. Stool Osmotic Gap
class StoolGapCalculator extends StatefulWidget {
  const StoolGapCalculator({super.key});
  @override
  State<StoolGapCalculator> createState() => _StoolGapState();
}

class _StoolGapState extends State<StoolGapCalculator> {
  final _na = TextEditingController();
  final _k = TextEditingController();
  String _result = "";

  void _calculate() {
    double? na = double.tryParse(_na.text);
    double? k = double.tryParse(_k.text);

    if (na != null && k != null) {
      // Gap = 290 - 2 * (Na + K)
      double gap = 290 - 2 * (na + k);
      String dx = "";
      if (gap > 100) {
        dx = "滲透性腹瀉 (Osmotic)\n(禁食後會改善)";
      } else if (gap < 50) {
        dx = "分泌性腹瀉 (Secretory)\n(禁食後持續拉)";
      } else {
        dx = "混合型 / 灰色地帶";
      }
      setState(() {
        _result = "Gap = ${gap.toStringAsFixed(0)} mOsm/kg\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Stool Osmotic Gap"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_na, "Stool Na", "mEq/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_k, "Stool K", "mEq/L")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate Gap"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.brown),
          const SizedBox(height: 16),
          const Text("* 假設血漿滲透壓為 290", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

// ===========================================================================
// PULMONARY CALCULATORS
// ===========================================================================

// 1. A-a Gradient
class AaGradientCalculator extends StatefulWidget {
  const AaGradientCalculator({super.key});
  @override
  State<AaGradientCalculator> createState() => _AaGradientState();
}

class _AaGradientState extends State<AaGradientCalculator> {
  final _age = TextEditingController();
  final _pao2 = TextEditingController();
  final _paco2 = TextEditingController();
  final _fio2 = TextEditingController(text: "21"); // Default Room Air
  String _result = "";

  void _calculate() {
    double? age = double.tryParse(_age.text);
    double? pao2 = double.tryParse(_pao2.text);
    double? paco2 = double.tryParse(_paco2.text);
    double? fio2 = double.tryParse(_fio2.text);

    if (age != null && pao2 != null && paco2 != null && fio2 != null) {
      // PAO2 = FiO2 * (Patm - PH2O) - (PaCO2 / 0.8)
      double patm = 760;
      double ph2o = 47;
      double bigA = (fio2 / 100) * (patm - ph2o) - (paco2 / 0.8);

      // A-a Gradient
      double gradient = bigA - pao2;

      // Expected Gradient
      double expected = (age / 4) + 4;

      String interpret = "";
      if (gradient > expected + 5) {
        // Allow slight buffer
        interpret =
            "異常升高 (High Gradient)\n原因: V/Q mismatch, Shunt, Diffusion defect";
      } else {
        interpret =
            "正常範圍 (Normal Gradient)\n原因: Hypoventilation, High Altitude";
      }

      setState(() {
        _result =
            "PAO2 (肺泡氧): ${bigA.toStringAsFixed(1)} mmHg\n"
            "A-a Gradient: ${gradient.toStringAsFixed(1)} mmHg\n"
            "(預期值: < ${expected.toStringAsFixed(1)})\n\n"
            "👉 $interpret";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("A-a Gradient"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_age, "Age", "yrs")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_fio2, "FiO2", "%")),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_pao2, "PaO2", "mmHg")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_paco2, "PaCO2", "mmHg")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.lightBlueAccent),
        ],
      ),
    );
  }
}

// 2. Ventilator Mechanics
class VentMechanicsCalculator extends StatefulWidget {
  const VentMechanicsCalculator({super.key});
  @override
  State<VentMechanicsCalculator> createState() => _VentMechanicsState();
}

class _VentMechanicsState extends State<VentMechanicsCalculator> {
  final _vt = TextEditingController();
  final _pip = TextEditingController();
  final _pplat = TextEditingController();
  final _peep = TextEditingController();
  String _result = "";

  void _calculate() {
    double? vt = double.tryParse(_vt.text);
    double? pip = double.tryParse(_pip.text);
    double? pplat = double.tryParse(_pplat.text);
    double? peep = double.tryParse(_peep.text);

    if (vt != null && pip != null && pplat != null && peep != null) {
      // Compliance = Vt / (Pplat - PEEP)
      double driving = pplat - peep;
      double compliance = vt / driving;

      // Resistance = PIP - Pplat
      double resistance = pip - pplat;

      String drivingMsg = driving > 15 ? "⚠️ 高 (>15)" : "✅ 正常";
      String compMsg = compliance < 50 ? "⚠️ 低 (<50 ARDS)" : "✅ 正常";
      String resMsg = resistance > 10 ? "⚠️ 高 (>10 阻塞)" : "✅ 正常";

      setState(() {
        _result =
            "Driving Pressure: ${driving.toStringAsFixed(1)} ($drivingMsg)\n"
            "Compliance: ${compliance.toStringAsFixed(1)} ($compMsg)\n"
            "Resistance: ${resistance.toStringAsFixed(1)} ($resMsg)";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Ventilator Mechanics"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDarkInput(_vt, "Tidal Vol (Vt)", "mL"),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_pip, "P-peak", "cmH2O")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_pplat, "P-plat", "cmH2O")),
            ],
          ),
          const SizedBox(height: 16),
          _buildDarkInput(_peep, "PEEP", "cmH2O"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.tealAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.tealAccent),
        ],
      ),
    );
  }
}

// 3. RSBI Calculator
class RSBICalculator extends StatefulWidget {
  const RSBICalculator({super.key});
  @override
  State<RSBICalculator> createState() => _RSBIState();
}

class _RSBIState extends State<RSBICalculator> {
  final _rr = TextEditingController();
  final _vt = TextEditingController();
  String _result = "";

  void _calculate() {
    double? rr = double.tryParse(_rr.text);
    double? vt = double.tryParse(_vt.text); // mL

    if (rr != null && vt != null) {
      // RSBI = RR / Vt(L)
      double rsbi = rr / (vt / 1000);

      String msg = "";
      if (rsbi > 105) {
        msg = "脫離失敗率高 (>105)";
      } else {
        msg = "可嘗試脫離 (<105)";
      }

      setState(() {
        _result = "RSBI = ${rsbi.toStringAsFixed(1)}\n👉 $msg";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("RSBI (Weaning)"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_rr, "RR", "/min")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_vt, "Vt", "mL")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate RSBI"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.greenAccent),
        ],
      ),
    );
  }
}

// ===========================================================================
// NEPHROLOGY CALCULATORS
// ===========================================================================

// 1. FEUrea Calculator
class FeUreaCalculator extends StatefulWidget {
  const FeUreaCalculator({super.key});
  @override
  State<FeUreaCalculator> createState() => _FeUreaCalculatorState();
}

class _FeUreaCalculatorState extends State<FeUreaCalculator> {
  final _sbun = TextEditingController(); // Serum Urea (BUN)
  final _scr = TextEditingController();
  final _uurea = TextEditingController(); // Urine Urea
  final _ucr = TextEditingController();
  String _result = "";
  Color _color = Colors.grey;

  void _calculate() {
    double? sbun = double.tryParse(_sbun.text);
    double? scr = double.tryParse(_scr.text);
    double? uurea = double.tryParse(_uurea.text);
    double? ucr = double.tryParse(_ucr.text);

    if (sbun != null && scr != null && uurea != null && ucr != null) {
      // FEUrea = (uUrea * sCr) / (sBUN * uCr) * 100
      double feurea = (uurea * scr) / (sbun * ucr) * 100;
      String dx = "";
      if (feurea <= 35.0) {
        dx = "Prerenal Azotemia";
        _color = Colors.greenAccent;
      } else if (feurea > 50.0) {
        dx = "Intrinsic (ATN)";
        _color = Colors.redAccent;
      } else {
        dx = "Indeterminate (灰色地帶)";
        _color = Colors.orangeAccent;
      }
      setState(() {
        _result = "FEUrea = ${feurea.toStringAsFixed(1)}%\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("FEUrea Calculator"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text("Serum Data", style: TextStyle(color: Colors.cyanAccent)),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_sbun, "Serum BUN", "mg/dL")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_scr, "Serum Cr", "mg/dL")),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Urine Data", style: TextStyle(color: Colors.cyanAccent)),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_uurea, "Urine Urea", "mg/dL")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_ucr, "Urine Cr", "mg/dL")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyanAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate FEUrea"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, _color),
          const SizedBox(height: 16),
          const Text(
            "* 適用於: 已使用利尿劑 (Diuretics) 的患者\n"
            "* 此時 FeNa 易假性升高 (>1%)，FEUrea 較準確",
            style: TextStyle(color: Colors.grey, fontSize: 13, height: 1.5),
          ),
        ],
      ),
    );
  }
}

// 2. FeNa Calculator
class FeNaCalculator extends StatefulWidget {
  const FeNaCalculator({super.key});
  @override
  State<FeNaCalculator> createState() => _FeNaCalculatorState();
}

class _FeNaCalculatorState extends State<FeNaCalculator> {
  final _sna = TextEditingController();
  final _scr = TextEditingController();
  final _una = TextEditingController();
  final _ucr = TextEditingController();
  String _result = "";
  Color _color = Colors.grey;

  void _calculate() {
    double? sna = double.tryParse(_sna.text);
    double? scr = double.tryParse(_scr.text);
    double? una = double.tryParse(_una.text);
    double? ucr = double.tryParse(_ucr.text);

    if (sna != null && scr != null && una != null && ucr != null) {
      double fena = (una * scr) / (sna * ucr) * 100;
      String dx = "";
      if (fena < 1.0) {
        dx = "Prerenal Azotemia";
        _color = Colors.greenAccent;
      } else if (fena > 2.0) {
        dx = "Intrinsic (ATN)";
        _color = Colors.redAccent;
      } else {
        dx = "Indeterminate / Mixed";
        _color = Colors.orangeAccent;
      }
      setState(() {
        _result = "FeNa = ${fena.toStringAsFixed(2)}%\n👉 $dx";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("FeNa Calculator"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_sna, "Serum Na", "mEq/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_scr, "Serum Cr", "mg/dL")),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_una, "Urine Na", "mEq/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_ucr, "Urine Cr", "mg/dL")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text(
              "Calculate FeNa",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, _color),
          const SizedBox(height: 16),
          const Text(
            "* 限制: 已使用利尿劑者準確度下降 (應改測 FEUrea)",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// 3. Hyponatremia Calculator
class HyponatremiaCalculator extends StatefulWidget {
  const HyponatremiaCalculator({super.key});
  @override
  State<HyponatremiaCalculator> createState() => _HyponatremiaCalculatorState();
}

class _HyponatremiaCalculatorState extends State<HyponatremiaCalculator> {
  final _na = TextEditingController();
  final _wt = TextEditingController();
  String _gender = "Male";
  double _infusateNa = 513; // Default 3% NaCl
  String _result = "";

  final Map<String, double> _fluids = {
    "3% Hypertonic Saline (513)": 513,
    "0.9% Normal Saline (154)": 154,
    "Ringer's Lactate (~130)": 130,
    "0.45% Saline (77)": 77,
    "D5W (0)": 0,
  };

  void _calculate() {
    double? na = double.tryParse(_na.text);
    double? wt = double.tryParse(_wt.text);

    if (na != null && wt != null) {
      double f = 0.6;
      if (_gender == "Female") f = 0.5;
      if (_gender == "Elderly Male") f = 0.5;
      if (_gender == "Elderly Female") f = 0.45;
      double tbw = wt * f;

      double change = (_infusateNa - na) / (tbw + 1);

      setState(() {
        _result =
            "預期變化: ${change > 0 ? '+' : ''}${change.toStringAsFixed(1)} mEq/L (每公升)";
        if (change > 0) {
          double volForOne = 1 / change * 1000;
          _result +=
              "\n\n補 1000ml 會升 ${change.toStringAsFixed(1)}\n"
              "補 ${volForOne.toStringAsFixed(0)} ml 會升 1.0";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Sodium Correction"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDropdown("Patient Type", _gender, [
            "Male",
            "Female",
            "Elderly Male",
            "Elderly Female",
          ], (v) => setState(() => _gender = v!)),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_wt, "Weight", "kg")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_na, "Serum Na", "mEq/L")),
            ],
          ),
          const SizedBox(height: 16),
          _buildFluidDropdown((v) => setState(() => _infusateNa = v!)),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text(
              "Calculate Change",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.purpleAccent),
          const SizedBox(height: 16),
          const Text(
            "* 每日校正上限: 8 mEq/L (預防 ODS)\n* 嚴重症狀優先使用 3% NaCl",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildFluidDropdown(Function(double?) onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: kInputFillColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<double>(
          value: _infusateNa,
          dropdownColor: kInputFillColor,
          isExpanded: true,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
          items: _fluids.entries.map((e) {
            return DropdownMenuItem(value: e.value, child: Text(e.key));
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

// 4. Potassium (TTKG) Calculator
class PotassiumCalculator extends StatefulWidget {
  const PotassiumCalculator({super.key});
  @override
  State<PotassiumCalculator> createState() => _PotassiumCalculatorState();
}

class _PotassiumCalculatorState extends State<PotassiumCalculator> {
  final _uk = TextEditingController();
  final _sk = TextEditingController();
  final _uosm = TextEditingController();
  final _sosm = TextEditingController();
  String _result = "";

  void _calculate() {
    double? uk = double.tryParse(_uk.text);
    double? sk = double.tryParse(_sk.text);
    double? uosm = double.tryParse(_uosm.text);
    double? sosm = double.tryParse(_sosm.text);

    if (uk != null && sk != null && uosm != null && sosm != null) {
      if (sk == 0 || uosm == 0) return;
      double ttkg = (uk / sk) / (uosm / sosm);

      String interp = "";
      if (ttkg > 7) {
        interp = "Aldosterone 作用旺盛\n(腎臟正在努力排鉀)";
      } else if (ttkg < 3) {
        interp = "Aldosterone 作用低下/抗性\n(腎臟排鉀障礙 -> RTA?)";
      } else {
        interp = "灰色地帶 (3-7)";
      }

      setState(() {
        _result = "TTKG = ${ttkg.toStringAsFixed(1)}\n👉 $interp";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("TTKG Calculator"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_uk, "Urine K", "mEq/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_uosm, "Urine Osm", "mOsm")),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_sk, "Serum K", "mEq/L")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_sosm, "Serum Osm", "mOsm")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate TTKG"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.amberAccent),
          const SizedBox(height: 16),
          const Text(
            "* 前提: U_Na > 25 且 U_Osm > P_Osm",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// 5. Free Water Deficit
class FreeWaterDeficitCalculator extends StatefulWidget {
  const FreeWaterDeficitCalculator({super.key});
  @override
  State<FreeWaterDeficitCalculator> createState() => _FreeWaterDeficitState();
}

class _FreeWaterDeficitState extends State<FreeWaterDeficitCalculator> {
  final _na = TextEditingController();
  final _weight = TextEditingController();
  final _targetNa = TextEditingController(text: "140");
  String _gender = "Male";
  String _result = "";

  void _calculate() {
    double? na = double.tryParse(_na.text);
    double? wt = double.tryParse(_weight.text);
    double? target = double.tryParse(_targetNa.text);

    if (na != null && wt != null && target != null) {
      double f = 0.6;
      if (_gender == "Female") f = 0.5;
      if (_gender == "Elderly Male") f = 0.5;
      if (_gender == "Elderly Female") f = 0.45;

      double tbw = wt * f;
      double deficit = tbw * ((na / target) - 1);

      setState(() {
        _result =
            "缺水量: ${deficit.toStringAsFixed(1)} Liters\n"
            "(建議分 48-72 小時補充)";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Free Water Deficit"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDropdown("Patient Type", _gender, [
            "Male",
            "Female",
            "Elderly Male",
            "Elderly Female",
          ], (v) => setState(() => _gender = v!)),
          const SizedBox(height: 16),
          _buildDarkInput(_weight, "Weight", "kg"),
          const SizedBox(height: 16),
          _buildDarkInput(_na, "Current Na", "mEq/L"),
          const SizedBox(height: 16),
          _buildDarkInput(_targetNa, "Target Na", "mEq/L"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text(
              "Calculate Deficit",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.orangeAccent),
        ],
      ),
    );
  }
}

// 6. CCI Calculator
class CCICalculator extends StatefulWidget {
  const CCICalculator({super.key});
  @override
  State<CCICalculator> createState() => _CCICalculatorState();
}

class _CCICalculatorState extends State<CCICalculator> {
  final _prePlt = TextEditingController();
  final _postPlt = TextEditingController();
  final _units = TextEditingController(text: "3");
  final _height = TextEditingController();
  final _weight = TextEditingController();
  String _result = "";

  void _calculate() {
    double? pre = double.tryParse(_prePlt.text);
    double? post = double.tryParse(_postPlt.text);
    double? u = double.tryParse(_units.text);
    double? h = double.tryParse(_height.text);
    double? w = double.tryParse(_weight.text);

    if (pre != null && post != null && u != null && h != null && w != null) {
      double bsa = sqrt((h * w) / 3600);
      double cci = (post - pre) * bsa / u;

      String interp = "";
      if (cci < 7.5) {
        interp = "輸血無效 (Refractory)\n* 1hr < 7.5 或 24hr < 4.5";
      } else {
        interp = "輸血有效 (Successful)";
      }

      setState(() {
        _result = "CCI: ${cci.toStringAsFixed(1)}\n👉 $interp";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("CCI (Platelet)"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(child: _buildDarkInput(_height, "Height", "cm")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_weight, "Weight", "kg")),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_prePlt, "Pre-PLT", "k/uL")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_postPlt, "Post-PLT", "k/uL")),
            ],
          ),
          const SizedBox(height: 16),
          _buildDarkInput(_units, "Platelet Content", "10^11 (LPPH約3)"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text(
              "Calculate CCI",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.redAccent),
        ],
      ),
    );
  }
}

// 7. ANC Calculator
class ANCCalculator extends StatefulWidget {
  const ANCCalculator({super.key});
  @override
  State<ANCCalculator> createState() => _ANCCalculatorState();
}

class _ANCCalculatorState extends State<ANCCalculator> {
  final _wbc = TextEditingController();
  final _seg = TextEditingController();
  final _band = TextEditingController();
  String _result = "";

  void _calculate() {
    double? wbc = double.tryParse(_wbc.text);
    double? seg = double.tryParse(_seg.text);
    double? band = double.tryParse(_band.text) ?? 0.0;

    if (wbc != null && seg != null) {
      double anc = wbc * (seg + band) / 100;
      String risk = "";
      if (anc < 500)
        risk = "嚴重低下 (Severe Risk)";
      else if (anc < 1000)
        risk = "中度低下 (Moderate)";
      else
        risk = "輕度/正常";

      setState(() {
        _result = "ANC = ${anc.toStringAsFixed(0)} /uL\n👉 $risk";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("ANC Calculator"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDarkInput(_wbc, "WBC Count", "/uL (ex. 4000)"),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _buildDarkInput(_seg, "Seg", "%")),
              const SizedBox(width: 16),
              Expanded(child: _buildDarkInput(_band, "Band", "%")),
            ],
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate ANC"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.greenAccent),
        ],
      ),
    );
  }
}

// 8. Bladder Volume
class BladderScanCalculator extends StatefulWidget {
  const BladderScanCalculator({super.key});
  @override
  State<BladderScanCalculator> createState() => _BladderScanState();
}

class _BladderScanState extends State<BladderScanCalculator> {
  final _w = TextEditingController();
  final _d = TextEditingController();
  final _h = TextEditingController();
  String _result = "";

  void _calculate() {
    double? w = double.tryParse(_w.text);
    double? d = double.tryParse(_d.text);
    double? h = double.tryParse(_h.text);

    if (w != null && d != null && h != null) {
      double vol = w * d * h * 0.7;
      setState(() {
        _result = "Volume ≈ ${vol.toStringAsFixed(0)} mL";
        if (vol > 400) _result += "\n👉 建議單導或 Foley";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Bladder Volume"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDarkInput(_w, "Width (Transverse)", "cm"),
          const SizedBox(height: 16),
          _buildDarkInput(_d, "Depth (Transverse)", "cm"),
          const SizedBox(height: 16),
          _buildDarkInput(_h, "Height (Longitudinal)", "cm"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _calculate,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Text("Calculate"),
          ),
          const SizedBox(height: 24),
          _buildResultText(_result, Colors.yellowAccent),
        ],
      ),
    );
  }
}

// 9. Acid-Base Calculator
class AcidBaseCalculator extends StatefulWidget {
  const AcidBaseCalculator({super.key});
  @override
  State<AcidBaseCalculator> createState() => _AcidBaseCalculatorState();
}

class _AcidBaseCalculatorState extends State<AcidBaseCalculator> {
  final _pHController = TextEditingController();
  final _pco2Controller = TextEditingController();
  final _hco3Controller = TextEditingController();
  final _naController = TextEditingController();
  final _clController = TextEditingController();
  final _albController = TextEditingController(text: "4.0");

  String _primaryResult = "";
  String _winterResult = "";
  String _agResult = "";
  String _deltaResult = "";
  Color _resultColor = Colors.grey;

  void _calculate() {
    double? pH = double.tryParse(_pHController.text);
    double? pco2 = double.tryParse(_pco2Controller.text);
    double? hco3 = double.tryParse(_hco3Controller.text);
    double? na = double.tryParse(_naController.text);
    double? cl = double.tryParse(_clController.text);
    double? alb = double.tryParse(_albController.text) ?? 4.0;

    if (pH == null || pco2 == null || hco3 == null) {
      setState(() => _primaryResult = "請輸入 pH, PaCO2, HCO3");
      return;
    }

    bool isAcidemia = pH < 7.40;
    String disorder = "";
    String winters = "";

    if (isAcidemia) {
      if (hco3 < 24) {
        disorder = "Metabolic Acidosis";
        double expectedCO2 = 1.5 * hco3 + 8;
        winters = "預期 PaCO2 = ${expectedCO2.toStringAsFixed(1)} ± 2";
        if (pco2 < expectedCO2 - 2)
          winters += "\n(合併 Resp Alkalosis)";
        else if (pco2 > expectedCO2 + 2)
          winters += "\n(合併 Resp Acidosis)";
        else
          winters += "\n(單純/適當代償)";
      } else {
        disorder = "Respiratory Acidosis";
      }
    } else {
      if (hco3 > 24) {
        disorder = "Metabolic Alkalosis";
      } else {
        disorder = "Respiratory Alkalosis";
      }
    }

    String agStr = "";
    String deltaStr = "";
    if (na != null && cl != null) {
      double ag = na - (cl + hco3);
      double expectedAG = alb * 2.5;
      agStr =
          "AG = ${ag.toStringAsFixed(1)} (Norm ~${expectedAG.toStringAsFixed(1)})";

      if (ag > expectedAG + 2) {
        double deltaRatio = (ag - expectedAG) / (24 - hco3);
        deltaStr = "Delta Ratio = ${deltaRatio.toStringAsFixed(2)}";
        if (deltaRatio < 0.4)
          deltaStr += " (HAGMA + NAGMA)";
        else if (deltaRatio < 1)
          deltaStr += " (HAGMA + NAGMA)";
        else if (deltaRatio > 2)
          deltaStr += " (HAGMA + Met Alk)";
        else
          deltaStr += " (Pure HAGMA)";
      }
    }

    setState(() {
      _primaryResult = disorder;
      _winterResult = winters;
      _agResult = agStr;
      _deltaResult = deltaStr;
      _resultColor = isAcidemia ? Colors.orangeAccent : Colors.blueAccent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Acid-Base Calc"),
        backgroundColor: kAppBarColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildDarkInput(_pHController, "pH", ""),
            const SizedBox(height: 12),
            _buildDarkInput(_pco2Controller, "PaCO2", "mmHg"),
            const SizedBox(height: 12),
            _buildDarkInput(_hco3Controller, "HCO3", "mEq/L"),
            const Divider(color: Colors.grey, height: 32),
            Row(
              children: [
                Expanded(child: _buildDarkInput(_naController, "Na", "")),
                const SizedBox(width: 16),
                Expanded(child: _buildDarkInput(_clController, "Cl", "")),
              ],
            ),
            const SizedBox(height: 12),
            _buildDarkInput(_albController, "Albumin", "g/dL"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                padding: const EdgeInsets.all(16),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                "Analyze",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            if (_primaryResult.isNotEmpty) ...[
              _buildResultCard(
                "診斷",
                _primaryResult,
                Icons.medical_services,
                _resultColor,
              ),
              if (_winterResult.isNotEmpty)
                _buildResultCard(
                  "代償 (Winter's)",
                  _winterResult,
                  Icons.balance,
                  Colors.white70,
                ),
              if (_agResult.isNotEmpty)
                _buildResultCard(
                  "Anion Gap",
                  _agResult,
                  Icons.science,
                  Colors.tealAccent,
                ),
              if (_deltaResult.isNotEmpty)
                _buildResultCard(
                  "Delta Ratio",
                  _deltaResult,
                  Icons.analytics,
                  Colors.amberAccent,
                ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(
    String title,
    String content,
    IconData icon,
    Color color,
  ) {
    return Card(
      color: kCardColor,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          title,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          content,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Other Simple Calculators
// ---------------------------------------------------------------------------
class QTcCalculator extends StatefulWidget {
  const QTcCalculator({super.key});
  @override
  State<QTcCalculator> createState() => _QTcCalculatorState();
}

class _QTcCalculatorState extends State<QTcCalculator> {
  final _qt = TextEditingController();
  final _hr = TextEditingController();
  String _res = "";
  void _calc() {
    double? q = double.tryParse(_qt.text);
    double? h = double.tryParse(_hr.text);
    if (q != null && h != null) {
      double qtc = q / sqrt(60 / h);
      setState(() => _res = "QTc = ${qtc.toStringAsFixed(0)} ms");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(title: const Text("QTc"), backgroundColor: kAppBarColor),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildDarkInput(_qt, "QT Interval", "ms"),
            const SizedBox(height: 16),
            _buildDarkInput(_hr, "Heart Rate", "bpm"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calc,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            _buildResultText(_res, Colors.redAccent),
          ],
        ),
      ),
    );
  }
}

class CrClCalculator extends StatefulWidget {
  const CrClCalculator({super.key});
  @override
  State<CrClCalculator> createState() => _CrClCalculatorState();
}

class _CrClCalculatorState extends State<CrClCalculator> {
  final _age = TextEditingController();
  final _wt = TextEditingController();
  final _cr = TextEditingController();
  bool _isFemale = false;
  String _res = "";
  void _calc() {
    double? a = double.tryParse(_age.text);
    double? w = double.tryParse(_wt.text);
    double? c = double.tryParse(_cr.text);
    if (a != null && w != null && c != null) {
      double crcl = ((140 - a) * w) / (72 * c);
      if (_isFemale) crcl *= 0.85;
      setState(() => _res = "CrCl = ${crcl.toStringAsFixed(1)} mL/min");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("Cockcroft-Gault"),
        backgroundColor: kAppBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text(
                "Female?",
                style: TextStyle(color: Colors.white),
              ),
              value: _isFemale,
              onChanged: (v) => setState(() => _isFemale = v),
              activeColor: Colors.purpleAccent,
            ),
            _buildDarkInput(_age, "Age", ""),
            const SizedBox(height: 12),
            _buildDarkInput(_wt, "Weight", "kg"),
            const SizedBox(height: 12),
            _buildDarkInput(_cr, "Creatinine", "mg/dL"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calc,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
              ),
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            _buildResultText(_res, Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}

class ChadScoreCalculator extends StatefulWidget {
  const ChadScoreCalculator({super.key});
  @override
  State<ChadScoreCalculator> createState() => _ChadState();
}

class _ChadState extends State<ChadScoreCalculator> {
  bool c = false, h = false, d = false, s = false, v = false, f = false;
  int a = 0;
  @override
  Widget build(BuildContext context) {
    int score =
        (c ? 1 : 0) +
        (h ? 1 : 0) +
        (d ? 1 : 0) +
        (s ? 2 : 0) +
        (v ? 1 : 0) +
        (f ? 1 : 0) +
        (a == 2 ? 2 : a);
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        title: const Text("CHA2DS2-VASc"),
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _sw("CHF", c, (v) => setState(() => c = v)),
          _sw("HTN", h, (v) => setState(() => h = v)),
          _sw("Age >= 75 (2pt)", a == 2, (v) => setState(() => a = v ? 2 : 0)),
          _sw("Age 65-74 (1pt)", a == 1, (v) => setState(() => a = v ? 1 : 0)),
          _sw("Diabetes", d, (v) => setState(() => d = v)),
          _sw("Stroke/TIA (2pt)", s, (v) => setState(() => s = v)),
          _sw("Vascular Dz", v, (v) => setState(() => v = v)),
          _sw("Female", f, (v) => setState(() => f = v)),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Score: $score",
              style: const TextStyle(
                color: Colors.tealAccent,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sw(String t, bool v, Function(bool) c) => SwitchListTile(
    title: Text(t, style: const TextStyle(color: Colors.white)),
    value: v,
    onChanged: c,
    activeColor: Colors.tealAccent,
  );
}

// ---------------------------------------------------------------------------
// UI Helpers (Improved Alignment)
// ---------------------------------------------------------------------------
Widget _buildDarkInput(TextEditingController c, String label, String suffix) {
  return TextField(
    controller: c,
    style: const TextStyle(color: Colors.white),
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
    textAlignVertical: TextAlignVertical.center, // 確保文字垂直置中
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
      suffixText: suffix,
      suffixStyle: const TextStyle(color: Colors.grey),
      filled: true,
      fillColor: kInputFillColor,
      isDense: true, // 緊湊模式
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ), // 對稱 padding
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget _buildDropdown(
  String label,
  String value,
  List<String> items,
  Function(String?) onChanged,
) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
    decoration: BoxDecoration(
      color: kInputFillColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: value,
        dropdownColor: kInputFillColor,
        isExpanded: true,
        style: const TextStyle(color: Colors.white, fontSize: 16),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
        items: items
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        onChanged: onChanged,
      ),
    ),
  );
}

Widget _buildResultText(String text, Color color) {
  return Center(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}
