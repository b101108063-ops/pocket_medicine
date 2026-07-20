// data.dart

final List<Map<String, dynamic>> pocketMedicineData = [
  // ====================================================================
  // Group: 危急徵象與症狀 (保持不變)
  // ====================================================================
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_shock_01",
    "lastUpdate": "2026/01/29",
    "title": "休克與低血壓 (Shock)",
    "subtitle": "On Call: 掐水、升壓劑泡法 & 鑑別",
    "content": {
      "intro":
          "### 處置原則\n1. **定義**：低血壓 (Hypotension) 不等於 休克。休克 = SBP<90 + 灌流不足 (意識變/尿少/濕冷)。\n2. **第一步：先掐水！**\n   * 全速輸注 N/S 500mL (1-2包)。\n   * **例外**：心衰竭/肺水腫 (量砍半)、洗腎病人。\n   * 若無效 -> **給升壓劑** 並 Call 後線 (準備 CVC)。\n3. **病史核對**：近期手術? (出血風險 -> 備血/輸血)；藥物過量? (Morphine -> Naloxone)。\n4. **目標**：維持 MAP >= 65 (SBP > 90-100)。",
      "diagnosis": [
        "[心因性] Cardiogenic: JVP高, 濕囉音 (MI, 心包填塞, 張力性氣胸)",
        "[低血容] Hypovolemic: JVP低, 皮膚乾 (出血, 脫水, 第三間隙)",
        "[分佈性] Distributive: JVP低, 四肢暖 (敗血症, 過敏, 脊髓損傷)",
        "[阻塞性] Obstructive: JVP高, 肺栓塞 (PE)",
        "[徵象] HR < 50: 考慮 Atropine 或 心臟傳導阻滯",
        "[徵象] Wheezing: 過敏性休克 或 心衰竭",
        "[徵象] 單側呼吸音消失: 張力性氣胸 -> 針刺減壓",
        "[檢驗] Stat EKG (排除 MI), ABG, CBC/Crossmatch (備血), CXR",
      ],
      "treatment": [
        {
          "category": "A. 升壓劑 (Vasopressors) - 實戰泡法",
          "items": [
            {
              "drug": "首選順序",
              "dose": "Levophed -> Pitressin -> Bosmin -> Dopamine",
            },
            {
              "drug": "1. Levophed (Norepinephrine)",
              "dose":
                  "**4 amp in 250mL D5W** (由 CVC 給予)\nRun **2-5 cc/hr** -> Max 40 cc/hr (通常 20 就要考慮加藥)\n*若 Septic shock 可加 Hydrocortisone 50mg q6h*",
            },
            {
              "drug": "2. Pitressin (Vasopressin)",
              "dose":
                  "二線用藥 (Levophed 不夠時加)\n**2 amp in 100mL NS** -> Run **1.5-6 cc/hr**",
            },
            {
              "drug": "3. Bosmin (Epinephrine)",
              "dose":
                  "濃 (Pure): Max 20 cc/hr\n稀 (**1mg in 19mL NS**): Run 0.6-30 cc/hr",
            },
            {
              "drug": "4. Dopamine (Easydopa)",
              "dose":
                  "**周邊 IV 可用** (升壓+升心跳)\n**4 amp in 500mL D5W** -> Run **10-40 cc/hr**",
            },
          ],
        },
        {
          "category": "B. 過敏性休克 (Anaphylaxis)",
          "items": [
            {
              "drug": "Epinephrine (救命首選)",
              "dose":
                  "輕中度: **0.5mg (1:1000) IM** (大腿外側)\n嚴重/休克: **1mg (1:10000) IV** slow push",
            },
            {"drug": "輔助藥物", "dose": "N/S 全速輸注 + Solu-Cortef + Antihistamine"},
          ],
        },
        {
          "category": "C. 其他藥物",
          "items": [
            {
              "drug": "Midodrine (口服升壓)",
              "dose":
                  "僅用於 **洗腎/體質性低血壓** (STAT 2-6#)\n[警示] **休克病人禁用** (只撐數字沒解決灌流)",
            },
            {"drug": "Atropine (心搏過緩)", "dose": "0.5-1 mg IV push (Max 3mg)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_chest_pain_01",
    "lastUpdate": "2026/01/28",
    "title": "胸痛 (Chest Pain)",
    "subtitle": "On Call: 隱藏殺手 EKG 與處置",
    "content": {
      "intro":
          "### 處置原則\n1. **抽血策略**：建議 **TnI/TnT + CKMB + CPK**。單驗 TnT 干擾多；**勿驗 NT-proBNP** (診斷效益低/健保限制)。\n2. **追蹤時機**：標準 **EKG 30min / Lab 2hr** repeat。若忙碌且低風險，可 2hr 一起追蹤。數值有變或圖形像 AMI -> **Call CV**。\n3. **Aortic Dissection**：病人痛到爆 (Tearing pain) + Refer pain -> **直接排 Chest CTA**。\n4. **後線支援**：看不懂 EKG 就大方 Call 後線確認 (或傳圖求救)。",
      "diagnosis": [
        "[危急] **急性冠心症 (ACS)**: 包含 STEMI 與等同 STEMI 的高危險徵象",
        "[危急] **主動脈剝離**: 兩手 BP 差 >20, 劇烈撕裂痛",
        "[危急] **張力性氣胸**: 低血壓, 氣管偏移, 單側呼吸音消失",
        "[危急] **肺栓塞 (PE)**: 低血氧, 心搏過速, D-dimer 高",
        "[隱藏] **Posterior MI**: V2-V3 **ST Depression** -> 加做 V7-V9 (左肩胛下緣) 確認 ST Elevation",
        "[隱藏] **Wellens' Syndrome** (LAD狹窄): V2-V3 出現 **Biphasic T** (Type A) 或 **Deep T Inversion** (Type B)",
        "[隱藏] **De Winter's** (LAD阻塞): ST depression (上勾型 concave up) + **Tall T wave**",
        "[處置] ECG 12-Lead (Stat) + O2 (若 SaO2 <94%) + IV Access",
        "[抽血] Troponin, CK-MB, CPK (2hr repeat); CBC, PT/aPTT",
      ],
      "treatment": [
        {
          "category": "A. 急性冠心症 (ACS)",
          "items": [
            {"drug": "Aspirin", "dose": "300 mg (3#) 嚼碎 (立即給予)"},
            {
              "drug": "Nitroglycerin (NTG)",
              "dose": "0.6 mg SL q5min x3 (禁忌: BP<90, **RV Infarct**, Viagra)",
            },
            {"drug": "Morphine", "dose": "2-4 mg IV q5-10min (若 NTG 無效)"},
          ],
        },
        {
          "category": "B. 主動脈剝離 (Aortic Dissection)",
          "items": [
            {
              "drug": "Beta-blockers (首選)",
              "dose": "Propranolol / Esmolol (**先降心跳** 再降血壓)",
            },
            {
              "drug": "Nitroprusside",
              "dose": "[警示] 僅在給予 Beta-blocker **後** 合併使用 (單用會反射性 tachycardia)",
            },
          ],
        },
        {
          "category": "C. 其他急症",
          "items": [
            {
              "drug": "Pulmonary Embolism",
              "dose": "O2 + Anticoagulant (Heparin); 不穩定考慮溶栓",
            },
            {
              "drug": "Tension Pneumothorax",
              "dose": "立即針刺減壓 (Needle Decompression) -> 胸管",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_dyspnea_01",
    "lastUpdate": "2026/01/29",
    "title": "呼吸急促 (Dyspnea/SOB)",
    "subtitle": "On Call: 致命鑑別、檢查與 LMNOP",
    "content": {
      "intro":
          "### 處置原則\n1. **首要任務**：確保呼吸道 + 修正低血氧。**切勿只調高氧氣流量而未做評估！**\n2. **危及生命 (Killers)**：\n   * 上呼吸道阻塞 / 過敏性休克 (Anaphylaxis)\n   * 張力性氣胸 (Tension Pneumo)\n   * 肺栓塞 (PE)\n   * 心因性肺水腫 (Acute CHF)\n   * 嚴重氣喘/COPD (Bronchospasm)\n   * 重症肺炎/敗血症 (ARDS)\n3. **氧氣目標**：一般 >94%；COPD (CO2滯留風險) 88-92%。",
      "diagnosis": [
        "[處置] **Bedside 評估**: 意識? 呼吸型態? 聽診? (勿只看 Monitor)",
        "[處置] **IV Access**: 建立兩條管路，裝上 ECG Monitor & SpO2",
        "[Stat Order] **ABG**: 評估氧合 (PaO2) 與通氣 (PaCO2/pH)",
        "[Stat Order] **CXR (Portable)**: 區分肺炎/氣胸/肺水腫最重要工具",
        "[Stat Order] **12-lead ECG**: 排除 MI 或心律不整",
        "[抽血] CBC/DC, Lytes, Cr, Trop-I, BNP, D-dimer (懷疑PE時)",
        "[危急] **Stridor/Wheezing + 蕁麻疹**: 過敏性休克",
        "[危急] **單側呼吸音消失 + 低血壓**: 張力性氣胸 -> 立即減壓",
        "[危急] **頸靜脈怒張 (JVP) + 濕囉音**: 心因性肺水腫",
      ],
      "treatment": [
        {
          "category": "A. 過敏性休克 (Anaphylaxis)",
          "items": [
            {
              "drug": "Epinephrine (首選 IM)",
              "dose":
                  "**0.5 mg (1:1000) IM** 大腿外側 (每 5min 可重複)\n*注意濃度是 1mg/1mL 那種*",
            },
            {
              "drug": "Epinephrine (IV)",
              "dose":
                  "[警示] **僅用於危及生命休克**\n**1 mg (1:10,000) IV** 緩慢推注 (稀釋成 10mL 那種)",
            },
            {
              "drug": "輔助藥物",
              "dose":
                  "Solu-Cortef (Steroid) + Diphenhydramine (Anti-histamine)",
            },
            {"drug": "呼吸道", "dose": "若喉頭水腫嚴重，儘早插管 (Intubation)"},
          ],
        },
        {
          "category": "B. 急性肺水腫 (LMNOP)",
          "items": [
            {
              "drug": "L: Lasix",
              "dose": "**40 mg (1-2 amp) IV push** (若腎差或長期使用需加倍)",
            },
            {"drug": "M: Morphine", "dose": "2-4 mg IV (焦慮/擴張靜脈; 注意呼吸抑制)"},
            {
              "drug": "N: Nitroglycerin",
              "dose": "舌下含服 或 **IV Pump** (降 Afterload 首選)",
            },
            {"drug": "O: Oxygen/BiPAP", "dose": "考慮 BiPAP (若意識清楚且無禁忌)"},
            {"drug": "P: Position", "dose": "坐起 (Sit up) 減少回心血"},
          ],
        },
        {
          "category": "C. 氣喘 / COPD 急性惡化",
          "items": [
            {
              "drug": "吸入劑 (Inhalation)",
              "dose": "Combivent (SABA+SAMA) 吸入 q20min (嚴重時連續給)",
            },
            {
              "drug": "類固醇 (Systemic)",
              "dose": "**Solu-Medrol** 40-125 mg IV (儘早給予減輕發炎)",
            },
            {
              "drug": "Magnesium Sulfate",
              "dose": "嚴重氣喘反應不佳時: **2g IV** run 20min",
            },
          ],
        },
        {
          "category": "D. 其他急症處置",
          "items": [
            {
              "drug": "張力性氣胸",
              "dose":
                  "**針刺減壓 (Needle Decompression)**\n位置: 患側鎖骨中線 **第2肋間** (14G/16G 針頭)",
            },
            {
              "drug": "肺栓塞 (PE)",
              "dose": "抗凝血劑 (Heparin/Clexane)\n若休克 (SBP<90): 考慮 tPA 溶栓",
            },
            {
              "drug": "肺炎 (Pneumonia)",
              "dose": "經驗性抗生素 (Ceph + Macrolide/FQ)\n評估 HFNC 或插管",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_consciousness_aeiou",
    "lastUpdate": "2025/10/15",
    "title": "意識改變 (AEIOU TIPS)",
    "subtitle": "On Call: 詳細鑑別與抗生素腦病變",
    "content": {
      "intro":
          "### 評估流程\n1. **Stabilize**: 確保呼吸道 (Respiratory failure? -> Intubation) 與 循環 (Shock? -> Bosmin/Fluids)。\n2. **Check**: 瞳孔 (Pupil), 肌力 (MP), 足底反射 (Babinski)。",
      "diagnosis": [
        "[A] Alcohol, **Acidosis** (ABG), **Ammonia** (肝性腦病變), Arrhythmia",
        "[E] **Electrolytes** (高/低鈉, 高鈣), Encephalopathy",
        "[I] **Infection** (Sepsis, Meningitis, UTI, Pneumonia)",
        "[O] **Opioid/Drug**: BZD, Opiate... 以及 **Ceftriaxone / Cefepime** (抗生素腦病變!)",
        "[U] **Uremia**: BUN > 150?",
        "[T] Trauma (撞到頭?), Temperature (Heat stroke)",
        "[I] **Insulin**: 低血糖 (Hypoglycemia) 或 DKA/HHS",
        "[P] Psychiatric (排除器質性後才考慮)",
        "[S] **Stroke** (ICH/Infarct), Seizure (Post-ictal), Shock",
      ],
      "treatment": [
        {
          "category": "初步處置 Workup",
          "items": [
            {
              "drug": "必抽",
              "dose": "Finger sugar (血糖), ABG, Na/K/Ca, NH3, Cortisol",
            },
            {"drug": "影像", "dose": "Brain CT (排除出血/腫瘤/大片梗塞)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_seizure_01",
    "lastUpdate": "2026/01/29",
    "title": "癲癇發作 (Seizure)",
    "subtitle": "On Call: 急救時序、Loading Dose & 鑑別",
    "content": {
      "intro":
          "### 處置原則\n1. **莫慌**：先確保安全 (防咬舌/跌倒) + 穩定 Vital Signs。\n2. **秒排除**：Shock, Hypoglycemia (測血糖!), Stroke, Meningitis。\n3. **藥物誘發**：**Cefepime** (腎差者)、**Carbapenem** (Imi > Erta > Mero) 常誘發 Seizure。\n4. **特殊營養**：酗酒者考慮 Thiamine 500mg IVD。",
      "diagnosis": [
        "[0-5min] **保護**: 側躺 (甦醒姿勢), Oral bite (牙關緊閉勿硬塞), O2, Monitor",
        "[觀察] **型態**: 單/雙側? 眼神上吊? 起始部位? 意識狀態? (請家屬錄影)",
        "[檢驗] **Labs**: CBC, Ca/Mg/P, Ammonia, Liver/Renal, Drug level (Dilantin/Valproate)",
        "[影像] **Brain CT**: 初次發作/懷疑中風/外傷者必做",
        "[感染] **Meningitis**: 發燒? 頸僵硬 (Neck stiffness)? -> Lumbar Puncture",
        "[鑑別] **EEG**: 排除假性癲癇或確認放電 (值班不急做)",
      ],
      "treatment": [
        {
          "category": "A. 第一線治療 (5-20 min)",
          "items": [
            {
              "drug": "Ativan (Lorazepam)",
              "dose":
                  "**2 mg (1 amp) IV slow push** (2min)\n5分鐘後無效可重複一次 (Max 4mg)\n*注意: 需有鎮靜授權/課程*",
            },
            {
              "drug": "替代藥物",
              "dose": "無 IV: **Dormicum** 10mg IM 或 **Diazepam** 20mg Rectal",
            },
            {
              "drug": "呼吸風險高者",
              "dose":
                  "若 BiPAP full / 口水多怕插管 -> **跳過 BZD**，直接給二線藥 (Keppra/Lacosamide)",
            },
          ],
        },
        {
          "category": "B. 第二線治療 (20-60 min) - Loading",
          "items": [
            {
              "drug": "Keppra (Levetiracetam)",
              "dose":
                  "首選 (副作用少)\n**Loading**: 40-60 mg/kg (約 **2000mg**) in 100mL NS run >10min\nMaintain: 500-1000mg q12h (依腎功能調整)",
            },
            {
              "drug": "Depakine (Valproate)",
              "dose":
                  "**Loading**: 20-40 mg/kg\nMaintain: 600mg q8h (Max 4500mg)\n*禁忌: 肝功能異常*",
            },
            {
              "drug": "Lacosamide (Vimpat)",
              "dose":
                  "**Loading**: 200-400 mg IVD 30min\nMaintain: 200-300mg q12h\n*禁忌: 心臟傳導阻滯 (AV block)*",
            },
            {
              "drug": "Phenytoin (Dilantin)",
              "dose":
                  "**Loading**: 20 mg/kg (Max 1500mg)\n*注意: 輸注慢、心律不整風險、容易 Phlebitis*",
            },
          ],
        },
        {
          "category": "C. 頑固性癲癇 (>60 min)",
          "items": [
            {
              "drug": "ICU 照護",
              "dose": "插管 (Endo) + 麻醉藥物 (Propofol / Midazolam / Phenobarbital)",
            },
          ],
        },
        {
          "category": "D. 後續預防 (Oral)",
          "items": [
            {
              "drug": "Keppra (Oral)",
              "dose": "1000mg BID 起手 (若仍抽可加至 1500mg)\n*水劑與錠劑劑量換算相同*",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "oncall_stroke_acute",
    "title": "急性中風處置 (Acute Stroke)",
    "subtitle": "2026 Update: TNK, BP & Sugar Limits",
    "content": {
      "intro":
          "### 🚑 Stroke Code 啟動流程\n1. **FAST 評估**: Face, Arm, Speech, Time.\n2. **排除低血糖**: 立即測手指血糖 (Finger sugar)。\n3. **影像**: NECT (排除出血) + CTA (確認大血管阻塞)。\n4. **關鍵時間**: LKW (最後正常時間) < 4.5h (IVT) 或 < 24h (EVT)。",
      "diagnosis": [
        "**排除禁忌症 (Contraindications)**:",
        "1. **出血**: ICH, SAH, 近期重大創傷/手術。",
        "2. **血壓**: BP > 185/110 (降不下來不可打)。",
        "3. **凝血**: INR > 1.7, PLT < 100k, 48h內用 NOAC。",
        "**⚠️ 2026 更新重點**:",
        "輕微非失能 (NIHSS ≤ 5): **不打 tPA/TNK**，改用 DAPT。",
        "大片梗塞 (ASPECTS 3-5): **仍需照會** 取栓評估。",
      ],
      "treatment": [
        {
          "category": "A. 靜脈溶栓 (IVT) - 首選改變",
          "items": [
            {
              "drug": "Tenecteplase (TNK)",
              "dose":
                  "**首選藥物 (Preferred)**\n劑量: **0.25 mg/kg** IV Bolus (Max 25mg)\n優點: 5秒推完，不需 Pump。",
            },
            {
              "drug": "Alteplase (tPA)",
              "dose":
                  "替代藥物\n劑量: **0.9 mg/kg** (Max 90mg)\n用法: 10% Bolus, 90% 滴注 60 min。",
            },
          ],
        },
        {
          "category": "B. 急性期血壓 (BP Control)",
          "items": [
            {
              "drug": "治療前 (Before)",
              "dose": "目標: **< 185/110** mmHg\n藥物: Nicardipine / Labetalol",
            },
            {
              "drug": "治療後 (After 72h)",
              "dose":
                  "目標: **< 180/105** mmHg\n⚠️ **禁忌**: 嚴禁降至 < 140 (Class 3 Harmful)\n*若掉太低需給水或升壓劑維持灌流*",
            },
          ],
        },
        {
          "category": "C. 血糖與抗血小板",
          "items": [
            {
              "drug": "血糖目標 (Sugar)",
              "dose":
                  "**140 - 180 mg/dL**\n*不要嚴格控制 (80-130 有害)*\n*大於 180 再打 RI Sliding Scale*",
            },
            {
              "drug": "抗血小板 (Antiplatelet)",
              "dose":
                  "若打 IVT: **24小時內禁吃** Aspirin/Plavix。\n若未打 IVT (輕症): 給予 **DAPT** (Asp+Plavix)。",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_arrhythmia_01",
    "lastUpdate": "2025/10/15",
    "title": "心律異常 (Arrhythmia)",
    "subtitle": "On Call: 頻脈、緩脈、TCP 設定 & 藥物泡法",
    "content": {
      "intro":
          "### 處置原則\n1. **核心觀念**：穩定 (Stable) vs 不穩定 (Unstable)。不穩定 (休克/胸痛/意識變) = **電擊**。\n2. **Sinus Tachycardia**：先找原因 (Fever, Pain, Shock, Thyroid)，不要只會降心跳！\n3. **Bradycardia**：無症狀且 HR > 50 可觀察。有症狀 (BP低/Shock) 再處理。\n4. **IHCA**：叫不醒+無脈搏 -> **直接壓胸 CPR**。",
      "diagnosis": [
        "🚨 [危急] **VF / Pulseless VT**: 去顫 (Defib) 200J -> CPR",
        "🚨 [危急] **Unstable Tachycardia**: 同步電擊 (Sync Cardioversion)",
        "🚨 [危急] **Symptomatic Bradycardia**: Atropine -> TCP / Dopamine",
        "⚡️ [判讀] **PSVT**: 窄/規則/快 (HR 160+)",
        "⚡️ [判讀] **Afib**: 窄/不規則/快",
        "⚡️ [判讀] **VT**: 寬/規則/快",
        "⚡️ [判讀] **Torsades**: 寬/不規則/旋轉 (Mg 缺乏)",
        "🧪 [檢驗] K, Mg, Ca, Troponin-I, Digoxin level, TSH/T4",
      ],
      "treatment": [
        {
          "category": "A. 緩脈 (Bradycardia)",
          "items": [
            {
              "drug": "Atropine (首選)",
              "dose":
                  "**1mg (1amp) IV push** q3-5min (Max 3mg)\n*若無效或 IV 不順，直接跳二線*",
            },
            {
              "drug": "Dopamine (二線)",
              "dose":
                  "**Easydopa** (400mg/250mL) Run **10-40 cc/hr**\n(約 5-20 mcg/kg/min)",
            },
            {
              "drug": "Epinephrine (二線)",
              "dose":
                  "**1mg in 100mL NS** Run **12-60 cc/hr**\n(約 2-10 mcg/min)",
            },
            {
              "drug": "TCP (體外節律)",
              "dose":
                  "貼片貼好 -> 轉 Demand mode\nRate: **60 bpm**\nCurrent: 從 30mA 往上調，直到有 Capture (QRS後有T波) 再加 10mA 安全範圍",
            },
          ],
        },
        {
          "category": "B. 頻脈 - PSVT",
          "items": [
            {"drug": "Vagal Maneuver", "dose": "Valsalva 或 頸動脈按摩 (成功率低，可跳過)"},
            {
              "drug": "Adenosine",
              "dose":
                  "**6mg 快推 (1-3秒) + 20cc NS 沖**\n無效 -> 12mg -> 12mg\n*備註: 病人會很不舒服 (Chest tight)*",
            },
            {
              "drug": "Verapamil (CCB)",
              "dose": "5mg IV slow push (>2min) 或 in 100mL NS drip",
            },
          ],
        },
        {
          "category": "C. 頻脈 - Afib/Flutter",
          "items": [
            {
              "drug": "Rate Control (首選)",
              "dose":
                  "**Concor** 1.25-5mg PO (最安全)\n**Metoprolol** 5mg IV push q5m (Max 15mg)",
            },
            {
              "drug": "Digoxin (HF首選)",
              "dose": "0.5 amp (0.25mg) IV slow push q6h -> PO 0.5-1# QD",
            },
            {
              "drug": "Amiodarone (二線)",
              "dose":
                  "Loading: **300mg (2支)** IV push -> 150mg\nPump: **900mg in D5W 500cc**\nRun **34 cc/hr** (6hr) -> **17 cc/hr** (18hr)",
            },
          ],
        },
        {
          "category": "D. 頻脈 - VT (Stable)",
          "items": [
            {
              "drug": "Amiodarone",
              "dose": "同 Afib 泡法 (900mg in 500cc)\n*注意: Torsades 禁用!*",
            },
            {
              "drug": "Lidocaine",
              "dose":
                  "1-1.5 mg/kg IV push -> Pump (50mL in 250mL NS run 10cc/hr)",
            },
          ],
        },
        {
          "category": "E. 特殊 - Torsades de Pointes",
          "items": [
            {
              "drug": "MgSO4",
              "dose":
                  "**2g (10%) IV** (Unstable: push; Stable: drip 15min)\n*禁用 Amiodarone!*",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_fever_01",
    "title": "發燒 (Fever)",
    "subtitle": "On Call: Survey, 管路感染 & 抗生素",
    "content": {
      "intro":
          "### 處置與判斷原則\n1. **退燒藥別名**：**Tinten** (護理師愛用詞) = Scanol = Acetaminophen。\n2. **時機**：OP day 當天 Fever 常見，不急著 Survey；若 **Day 2-3 仍燒** 或 **New peak** 則必須 Survey。\n3. **CRBSI (導管感染) 判斷**：\n   * 同時抽周邊血與管路血 (CVC/Port-A)。\n   * 若管路血長菌時間比周邊血 **早 > 1-2 小時** -> 高度懷疑管路感染。\n4. **Fungemia Risk**：長期 TPN、ICU、廣效抗生素使用、免疫抑制 -> **務必驗 B/C for Fungus** (一般 B/C 易漏)！",
      "diagnosis": [
        "[常規] **Labs**: CBC/DC, Cr, ALT, Na/K, **B/C x2套** (第1套長菌就抽第2套防汙染)",
        "[常規] **Urine**: U/A, U/C (Aerobic); **Sputum**: Culture, Gram stain",
        "[影像] **CXR** (New patch?)",
        "[肺炎] 若無 Focus 且燒不退:\n   * **Urine Ag**: Pneumococcal & Legionella\n   * **Mycoplasma**: Throat swab PCR (挖深一點!) > IgM/IgG\n   * **Viral**: Flu Ag, Covid PCR",
        "[特殊] **Procalcitonin / Lactate**: 用於 Septic shock 或 Toxic sign 強烈時",
        "[特殊] **D-Dimer**: 排除 PE",
        "[腦膜炎] Neck Stiffness? Jolt accentuation? -> **Lumbar Puncture**",
        "[心內膜炎] 反覆燒不退 -> **Echo (TTE/TEE)** (Order: Doppler + M-mode + Color flow)",
      ],
      "treatment": [
        {
          "category": "A. 退燒策略 (Antipyretics)",
          "items": [
            {
              "drug": "口服",
              "dose": "**Acetaminophen** (Tinten/Scanol) 500mg PO",
            },
            {
              "drug": "Aspegic (健保針)",
              "dose": "IM / IV push / IVD (效果強，口服無效可給)",
            },
            {
              "drug": "Acetamol (自費針)",
              "dose": "1 amp in 100mL NS run 1hr (或 IV push)",
            },
            {"drug": "物理退燒", "dose": "冰枕 (Ice pillow) 或 小林退熱貼"},
          ],
        },
        {
          "category": "B. 抗生素升階 (Escalation)",
          "items": [
            {"drug": "起手式", "dose": "懷疑院內感染 (Cover Pseudo) -> **Tazocin**"},
            {
              "drug": "Unstable / Toxic",
              "dose":
                  "Septic shock 或已用 Tazocin 仍燒 -> **Meropenem** 或 **Doripenem**",
            },
            {
              "drug": "Fungemia",
              "dose": "若有 Risk (TPN/CVC) -> 加做 **B/C for Fungus** 並考慮抗黴菌藥",
            },
          ],
        },
        {
          "category": "C. 管路處置 (Source Control)",
          "items": [
            {
              "drug": "CVC (中心靜脈導管)",
              "dose":
                  "懷疑感染就拔 (換新位置)，留 **Tip Culture** (無菌剪刀剪下)\n*拔除前可由舊管路抽一套 B/C for Fungus*",
            },
            {"drug": "Foley (導尿管)", "dose": "放很久? 髒? -> **換新**並留 U/A, U/C"},
            {"drug": "PCN (腎造廔)", "dose": "直接留 PCN 的尿 (註記左/右側)，由主治醫師決定拔除時機"},
            {
              "drug": "Port-A / Permcath",
              "dose": "值班**不拔** -> 會診外科處理，記得開 **Tip Culture** 單",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_gib_01",
    "lastUpdate": "2025/10/15",
    "title": "腸胃道出血 (GI Bleeding)",
    "subtitle": "On Call: 簡易流程與 PPI 泡法",
    "content": {
      "diagnosis": [
        "[評估] 秤重計量 (Tarry stool/Coffee ground)",
        "[評估] Vital signs (Tachycardia? Shock?) -> 決定是否急做胃鏡/插管",
        "[抽血] Hb, Platelet, PT/APTT, Lactate (大量出血 Q4-6H 追蹤)",
      ],
      "treatment": [
        {
          "category": "A. 藥物治療",
          "items": [
            {
              "drug": "PPI (Pantoloc)",
              "dose":
                  "輕微: 40mg IV QD-Q12H\n**嚴重**: **200mg in 500cc NS**, IV Pump run **21 cc/hr**",
            },
            {
              "drug": "其他",
              "dose": "Prokinetic agents (促進排空), Transamine (下消化道)",
            },
          ],
        },
        {
          "category": "B. 處置",
          "items": [
            {"drug": "NPO", "dose": "給予含糖點滴 (D5W/Run), 禁食至隔天評估"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_abd_01",
    "title": "腹痛 (Abdominal Pain)",
    "subtitle": "On Call: 危急排除與處置",
    "content": {
      "diagnosis": [
        "[警示] 初步診斷前避免隨意使用止痛藥 (以免掩蓋徵象)",
        "[危急] 臟器穿孔/破裂 (Perforated Viscus): 休克風險",
        "[危急] 上行性膽管炎 (Cholangitis): 敗血性休克",
        "[危急] 大量出血: AAA 破裂, 子宮外孕, 脾臟破裂",
        "[處置] 生命徵象不穩: 立即 IV 輸液, 緊急備血",
        "[影像] KUB (Free air/Air-fluid level/Calcification)",
        "[進階] 超音波, CT (懷疑膿瘍/胰臟炎)",
      ],
      "treatment": [
        {
          "category": "A. 胰臟炎 (Pancreatitis)",
          "items": [
            {"drug": "處置", "dose": "禁食 (NPO) + IV 輸液補充"},
            {
              "drug": "Meperidine (Demerol)",
              "dose": "50-150 mg IM/SC q3-4h (止痛首選)",
            },
          ],
        },
        {
          "category": "B. 消化性潰瘍 / GERD",
          "items": [
            {
              "drug": "PPIs",
              "dose": "Omeprazole 20mg PO 或 Pantoprazole 40mg PO qd",
            },
            {
              "drug": "H2 Blockers",
              "dose": "Famotidine 40mg PO hs 或 Ranitidine 300mg hs",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_sepsis_01",
    "lastUpdate": "2025/10/15",
    "title": "敗血性休克 (Septic Shock)",
    "subtitle": "On Call: Hour-1 Bundle & Source ID",
    "content": {
      "intro":
          "### 處置原則\n1. **錯誤示範**：只有掐水沒做 Survey；LVEF 正常卻誤判心因性休克。\n2. **正確流程**：Bedside 評估 -> 抽血/細菌培養 -> 抗生素 -> 水分復甦 (Fluid challenge)。\n3. **Hour-1 Bundle**：測 Lactate, 留 B/C (使用抗生素前), 廣效抗生素, 30mL/kg 輸液 (若低血壓/Lactate>4), 升壓劑 (維持 MAP>=65)。",
      "diagnosis": [
        "[感染源] **Pneumonia**: 呼吸道症狀, CXR Patch (驗 Urine Ag, Flu/Covid)",
        "[感染源] **UTI**: 敲痛 (Flank pain), 尿管放太久? (換管+留尿)",
        "[感染源] **BSI (導管)**: 有 CVC/Port-A? (同時抽周邊+導管血)",
        "[感染源] **Cellulitis**: 標記紅腫範圍, 檢查 Crepitus (壞死性筋膜炎?)",
        "[感染源] **Intra-abdominal**: 肚子脹/痛? Peritoneal signs? (KUB/CT)",
        "[檢驗] CBC/DC, Na/K, Cr/ALT, Lactate, VBG/ABG, B/C x2",
      ],
      "treatment": [
        {
          "category": "A. 初步復甦 (Resuscitation)",
          "items": [
            {
              "drug": "Fluids",
              "dose": "Crystalloid (NS/LR) 30 mL/kg 快速輸注 (視心肺功能調整)",
            },
            {
              "drug": "Vasopressor",
              "dose": "首選 **Norepinephrine** (Levophed) -> 維持 MAP >= 65",
            },
            {"drug": "2nd Line", "dose": "Vasopressin (通常用於二線，病房較少開)"},
          ],
        },
        {
          "category": "B. 抗生素 (Antibiotics)",
          "items": [
            {"drug": "原則", "dose": "診斷後 1 小時內給予廣效抗生素 (如 Tazocin, Cefepime)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_combative_01",
    "title": "躁動與攻擊性 (Combative)",
    "subtitle": "安全確認、譫妄 (Haldol) vs 戒斷 (BZD)",
    "content": {
      "intro":
          "### 核心原則：區分病因 (Differential)\n1. **安全第一**: 保護自己與病人。先排除 **低血糖 / 缺氧 / 休克**。\n2. **黃金交叉**: 判斷是 **一般譫妄** 還是 **酒精戒斷**？\n   * **譫妄 (Delirium)**: 首選 **Haldol** (❌ 忌用 BZD，會更亂)。\n   * **戒斷 (Withdrawal)**: 首選 **BZD** (❌ 忌用 Haldol，會降癲癇閾值)。",
      "diagnosis": [
        "[排除] **低血糖**: Check sugar (<70 立即給 D50W 2-3 amp)。",
        "[排除] **缺氧**: Check SpO2 (<90 給 O2，COPD 目標 88-92)。",
        "[譫妄] 定向感變差、日夜顛倒、胡言亂語。常見於感染/代謝/藥物。",
        "[戒斷] **酗酒史** + 停酒 6-48hr + 震顫/心跳快/冒汗/癲癇。",
      ],
      "treatment": [
        {
          "category": "A. 譫妄控制 (Delirium)",
          "items": [
            {
              "drug": "Haloperidol (Haldol)",
              "dose":
                  "首選 (若非戒斷)。**0.5-1 mg IM/PO** q30m PRN (Max 5mg/day)。\n*注意: QT prolong (>460ms 慎用), EPS*",
            },
            {
              "drug": "非典型抗精神病藥",
              "dose":
                  "**Quetiapine (Seroquel)** 25mg PO (適合睡前/輕度躁動)\n**Olanzapine (Zyprexa)** 5mg PO/IM\n*EPS 風險較低，適合老人*",
            },
            {
              "drug": "EPS 解毒劑",
              "dose": "**Vena (Diphenhydramine)** 30-50mg IV/IM (若發生肌張力異常)",
            },
          ],
        },
        {
          "category": "B. 酒精戒斷 (Withdrawal)",
          "items": [
            {
              "drug": "Benzodiazepine",
              "dose":
                  "首選 (抑制交感興奮)。\n**Ativan** 2-4mg IVP 或 **Valium** 5-10mg IVP\n每 5-20min 重複直到鎮靜 (目標: 嗜睡但可喚醒)",
            },
            {
              "drug": "Thiamine (B1)",
              "dose":
                  "**100mg IVD** (務必在**打糖水之前**給予!)\n預防 Wernicke Encephalopathy",
            },
            {"drug": "禁忌", "dose": "避免單獨使用 Beta-blocker (會掩蓋戒斷徵象)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_falls_01",
    "title": "跌倒 (Falls)",
    "subtitle": "On Call: 評估傷害與潛在病因",
    "content": {
      "diagnosis": [
        "[危急] 顱內出血 (ICH): 尤其服用抗凝血劑者 (Warfarin/DOAC)",
        "[危急] 髖部骨折 (Hip Fx): 老年人/女性常見, 縮短/外旋",
        "[檢查] GCS/瞳孔 (神經缺損?), 頭部觸診 (血腫/熊貓眼)",
        "[檢查] 姿勢性血壓 (Postural BP): 臥->立, SBP降>15 提示脫水",
        "[必測] 指尖血糖 (Finger stick)",
      ],
      "treatment": [
        {
          "category": "A. 針對原因調整 (Prevention)",
          "items": [
            {"drug": "體液復甦", "dose": "若有姿勢性低血壓/脫水, 給予 IV Normal Saline"},
            {"drug": "藥物檢視 (Stop)", "dose": "停用/減量: 安眠藥 (BZD), 利尿劑 (夜尿), 降壓藥"},
          ],
        },
        {
          "category": "B. 併發症與處置",
          "items": [
            {"drug": "顱內出血 (ICH)", "dose": "緊急會診神經外科; 考慮反轉抗凝血劑 (Vit K, FFP)"},
            {"drug": "傷口處理", "dose": "縫合/包紮 (注意抗凝血劑使用者之延遲出血)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🚨 危急徵象與症狀",
    "id": "protocol_dnr_01",
    "lastUpdate": "2025/10/15",
    "title": "DNR 簽署與倫理",
    "subtitle": "On Call: 啟用時機與溝通",
    "content": {
      "intro":
          "### 啟用時機\n1. **病人符合末期診斷**：癌症末期 或 **八大非癌末期**。\n2. **八大非癌末期**：失智、嚴重中風、心臟衰竭、嚴重 COPD、嚴重肺纖維化、肝硬化、急性/慢性腎衰竭。\n3. **決策權重**：病人意願 > 家屬意願。\n4. **值班原則**：VS 說可以 DNR 才可以 DNR；急診簽的 DNR 不一定算數 (需 VS 確認)。",
      "diagnosis": [],
      "treatment": [],
    },
  },
  // ====================================================================
  // Group 2: 🧪 實驗室數值異常 (Labs & Electrolytes)
  // ====================================================================
  {
    "group": "🧪 實驗室數值異常",
    "id": "protocol_potassium_01",
    "lastUpdate": "2026/01/29",
    "title": "鉀離子異常 (Hyper/Hypokalemia)",
    "subtitle": "On Call: 高血鉀急救 & 低血鉀補充",
    "content": {
      "intro":
          "### 處置原則\n1. **核心目標**：防範致死性心律不整 (VF/Asystole)。\n2. **高血鉀 (>5.5)**：內科急症，需先排除**假性 (溶血)**，若 ECG 有變化需立即治療。\n3. **低血鉀 (<3.5)**：由口服優先。需注意 **Mg (鎂)** 是否低下，並留意 **TPP** (亞裔男性常見)。",
      "diagnosis": [
        "[高血鉀 ECG] **Peaked T** (早) -> P波消失 -> QRS變寬 -> **Sine wave** (瀕死)",
        "[排除假性] **溶血 (Hemolysis)** 最常見！(止血帶綁太久/抽血困難)",
        "[找原因] 酸中毒 (Acidosis), 腎衰竭, 藥物 (ACEI/ARB/NSAIDs/Spiro), 橫紋肌溶解",
        "[低血鉀 ECG] **U waves**, T波平坦, QT 延長 (恐誘發 Torsades)",
        "[找原因] 鹼中毒, 利尿劑, 腹瀉, **低血鎂 (Hypomagnesemia)**",
        "[檢驗] Stat ECG, K, Mg, Ca, Cr, ABG (酸鹼), CPK (Rhabdo?)",
      ],
      "treatment": [
        {
          "category": "A. 高血鉀: 1. 穩定細胞膜 (Stabilize)",
          "items": [
            {
              "drug": "Calcium Gluconate",
              "dose": "**1-2 amp (10-20mL) IV** run > 3min\n*作用快但短 (1hr)*",
            },
            {
              "drug": "警示",
              "dose": "[警示] 若病人使用 **Digoxin** 需極度小心 (恐誘發中毒)，除非瀕死否則避免使用或極慢速給予",
            },
          ],
        },
        {
          "category": "A. 高血鉀: 2. 促進內移 (Shift)",
          "items": [
            {
              "drug": "Insulin + Glucose",
              "dose": "**10u RI + 50mL D50W** IV push\n*若血糖 >250 可單給 RI*",
            },
            {
              "drug": "Inhalation",
              "dose": "Salbutamol (Albuterol) 10-20mg 吸入 (Nebulizer)",
            },
            {"drug": "Bicarbonate", "dose": "1 amp IV (僅在 **代謝性酸中毒** 時有效)"},
          ],
        },
        {
          "category": "A. 高血鉀: 3. 移除 (Remove)",
          "items": [
            {"drug": "Diuretics", "dose": "Lasix 40-80 mg IV (需確認有尿)"},
            {
              "drug": "Resins (吸附劑)",
              "dose":
                  "Kalimate/Kayexalate 15-30g PO 或 50g Enema (灌腸)\nLokelma (新型) 1包 QD",
            },
            {"drug": "Dialysis", "dose": "緊急洗腎 (無尿或藥物無效時)"},
          ],
        },
        {
          "category": "B. 低血鉀 (Hypokalemia)",
          "items": [
            {
              "drug": "輕度 (3.0-3.5)",
              "dose": "**口服優先**: K-Glu 或 Slow-K 10-20 mEq PO TID",
            },
            {
              "drug": "中度 (2.5-3.0)",
              "dose": "口服 20 mEq + **KCl 20 mEq in 500mL NS** IV drip",
            },
            {
              "drug": "重度 (<2.5) / 有症狀",
              "dose": "積極靜脈輸注: **KCl 10-20 mEq in 100mL NS** run > 1hr",
            },
            {
              "drug": "輸注限速 (重要!)",
              "dose":
                  "周邊血管: Max **10-20 mEq/hr** (太快會痛/心律不整)\n濃度: 每公升不宜超過 40-60 mEq",
            },
            {
              "drug": "補充鎂 (Mg)",
              "dose": "若 Mg 低下務必補充，否則 K 補不起來 (**MgSO4 1-2g IV**)",
            },
          ],
        },
        {
          "category": "C. 特殊情況: TPP",
          "items": [
            {
              "drug": "甲狀腺毒性週期性麻痺",
              "dose":
                  "常見於亞裔男性。**避免大量補鉀** (會反彈性高血鉀)。\n治療重點為控制甲狀腺亢進 + 非選擇性 Beta-blocker (Propranolol)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🧪 實驗室數值異常",
    "id": "protocol_sodium_01",
    "lastUpdate": "2026/01/29",
    "title": "鈉離子異常 (Sodium)",
    "subtitle": "On Call: 鑑別、U_osm & 矯正速度",
    "content": {
      "intro":
          "### 處置原則\n1. **核心原則**：鈉異常 = 水分平衡問題。治療重點是「速度控制」。\n2. **矯正限速**：每日變化 **< 8 mEq/L** (防腦水腫/ODS)。\n3. **低血鈉鑑別**：\n   * **P_osm**: 正常/高 (高血糖?), 低 (真性低血鈉)\n   * **U_osm**: <100 (喝太多水/Beer potomania), >300 (ADH 作用中)\n   * **U_Na**: <10 (心衰/肝硬化/脫水), >20 (利尿劑/腎流失/SIADH)",
      "diagnosis": [
        "[公式] **Corrected Na**: Na + 1.6 * ((Glu-100)/100)",
        "[公式] **Free Water Deficit**: (Na-140)/140 * TBW",
        "[鑑別] **SIADH**: Euvolemic + U_Na > 20 + U_osm 高。排除甲狀腺/腎上腺低下。",
        "[鑑別] **CSW (腦耗鹽)**: Hypovolemic (脫水) + U_Na 高。需補水補鹽。",
      ],
      "treatment": [
        {
          "category": "A. 低血鈉 (Hyponatremia)",
          "items": [
            {
              "drug": "嚴重症狀 (癲癇/昏迷)",
              "dose": "**3% Hypertonic Saline** 100mL IV bolus (目標升 4-6 mEq)",
            },
            {
              "drug": "低血容 (脫水)",
              "dose": "**Normal Saline** (恢復血容後 Na 會快速上升，需密切追蹤)",
            },
            {
              "drug": "高血容 (CHF/Liver)",
              "dose": "**限水** + **Lasix** (Loop diuretic)",
            },
            {
              "drug": "SIADH",
              "dose": "**限水** (<800mL)。鹽片 (Salt tab) 或 Tolvaptan",
            },
          ],
        },
        {
          "category": "B. 高血鈉 (Hypernatremia)",
          "items": [
            {
              "drug": "低血容 (Shock)",
              "dose": "先 **NS** 穩定血壓，再換 **0.45%S** 或 **D5W**",
            },
            {
              "drug": "單純失水 (DI/老人)",
              "dose": "補 **Free Water** (D5W / 口服水)。計算缺水量分 48hr 補回",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🧪 實驗室數值異常",
    "id": "protocol_acid_base_01",
    "lastUpdate": "2026/01/29",
    "title": "酸鹼失衡 (Acid-Base)",
    "subtitle": "On Call: 判讀流程、UAG & Delta Ratio",
    "content": {
      "intro":
          "### 判讀三部曲\n1. **pH**: 酸 (<7.35) vs 鹼 (>7.45)\n2. **PCO2**: 呼吸性 (異常) vs 代謝性 (正常/代償)\n3. **Anion Gap (AG)**: 若代酸必算。正常 12±2。\n   * **AG 上升**: 找 GOLD MARK (Glycols, Oxyproline, Lactate, Methanol, Aspirin, Renal, Ketoacidosis)。\n   * **AG 正常**: 算 **Urine AG (UAG)**。\n     * 負值: 腹瀉 (腸道流失)\n     * 正值: RTA (腎小管酸中毒)",
      "diagnosis": [
        "[公式] **Anion Gap**: Na - (Cl + HCO3)",
        "[公式] **Delta Ratio**: (AG-12) / (24-HCO3)。<0.4 (NAGMA), 1-2 (单纯高AG), >2 (代鹼)",
        "[公式] **Winters**: PCO2 = 1.5 x HCO3 + 8 ± 2 (代酸代償)",
        "[危急] **pH < 7.1**: 嚴重酸中毒，考慮 Bicarb 治療 (尤其是 AKI/RTA)",
        "[鑑別] **代鹼 (Met. Alk)**: 測尿氯 (U_Cl)。<25 (嘔吐/利尿劑), >40 (高醛固酮/低鉀)",
      ],
      "treatment": [
        {
          "category": "A. 代謝性酸中毒 (MA)",
          "items": [
            {"drug": "治療根本", "dose": "DKA (胰島素), 休克 (循環), 尿毒 (洗腎)"},
            {
              "drug": "Bicarbonate",
              "dose":
                  "**pH < 7.1-7.2** 時考慮。1-3 amp in D5W滴注。\n*注意: 避免與 Ca 同管路 (沈澱)*",
            },
          ],
        },
        {
          "category": "B. 代謝性鹼中毒 (M. Alk)",
          "items": [
            {
              "drug": "Saline Responsive",
              "dose": "給予 **Normal Saline** + **KCl** (低鉀會維持代鹼)",
            },
            {
              "drug": "Saline Resistant",
              "dose": "**Acetazolamide** (Diamox) 250mg PO/IV (排 HCO3)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🧪 實驗室數值異常",
    "id": "protocol_dka_hhs_01",
    "lastUpdate": "2026/01/29",
    "title": "高血糖急症 (DKA/HHS)",
    "subtitle": "On Call: SC vs Pump 泡法 & 關閉時機",
    "content": {
      "intro":
          "### 處置原則\n1. **核心目標**：補水 > 降糖。寧可高血糖 (180-200) 也不要低血糖。\n2. **藥物選擇**：Novorapid 缺貨可改 **Apidra** (Duration 稍短，劑量相同)。\n3. **診斷標準**：\n   * **DKA**: BS>200 + Ketone(+) + Acidosis (pH<7.3)\n   * **HHS**: BS>600 + Osm>320 (通常 BS>600 Osm 就高了)\n4. **重要觀念**：\n   * DKA/HHS 可能合併發生。\n   * **HHS** 血糖正常可直接 Off pump。\n   * **DKA** 需等 **Anion Gap 正常** 或 **Ketone 消失** 才能 Off (若血糖低但 Ketone 仍在 -> 補 D5W 繼續 Run Pump)。",
      "diagnosis": [
        "[公式] **Corrected Na**: Na + 1.6 * ((Glu-100)/100)",
        "[檢驗] Blood Ketone (勿驗 Urine! 反應慢), ABG/VBG, K (Q4-6H), Sugar (Q1-2H)",
        "[處置] **NPO**: 血糖都這樣了別再吃了",
        "[處置] **Hydration**: 第一小時給 1L (15-20ml/kg) 0.9% NS\n*DKA 缺水 3-5L; HHS 缺水 8-10L (老人/心衰竭請斟酌)*",
      ],
      "treatment": [
        {
          "category": "A. 輕中度 DKA (pH >= 7.0)",
          "items": [
            {
              "drug": "SC Protocol (免 Pump)",
              "dose":
                  "證據: Diabetes Care 2004\n1. **Stat**: Novorapid/Apidra 0.3 U/kg SC\n2. **Maintain**: 0.2 U/kg SC q2h\n3. **當 BS < 250**: 改 D5-0.45%S + 0.1 U/kg SC q2h",
            },
          ],
        },
        {
          "category": "B. 重度 DKA / HHS (Insulin Pump)",
          "items": [
            {
              "drug": "泡法 (1:1)",
              "dose":
                  "**100U RI (或 Novorapid Vial) + 100mL NS**\n*注意藥名結尾是 Vial 不是 PC*",
            },
            {"drug": "IV Push (Loading)", "dose": "DKA 6U / HHS 10U (視情況可省略)"},
            {
              "drug": "Run 法 1 (Titration)",
              "dose":
                  "BS 120-180: 1 cc/hr\nBS 181-240: 2 cc/hr\nBS 241-300: 3 cc/hr\nBS 301-360: 4 cc/hr\nBS 361-400: 5 cc/hr\nBS > 400: Call Duty",
            },
            {
              "drug": "Run 法 2 (Continuous)",
              "dose":
                  "Maintain: **0.1 U/kg/hr**\nBS < 250 時: 改 D5-0.45%S + 減速至 0.05 U/kg/hr",
            },
          ],
        },
        {
          "category": "C. 鉀離子 (Potassium)",
          "items": [
            {
              "drug": "K < 3.0",
              "dose": "🚨 **Hold Insulin Pump!** 先補鉀再說 (防心律不整)",
            },
            {
              "drug": "K 3.0-4.0",
              "dose": "Insulin 使用中預期會降，**預防性補鉀** (周邊 IV / 口服)",
            },
          ],
        },
        {
          "category": "D. 一般血糖控制 (住院)",
          "items": [
            {
              "drug": "Stat Control",
              "dose":
                  "BS > 300 再處理 (200多可 OBS)\nNovorapid/Apidra 依滑動量表 (Scale) 給予",
            },
            {
              "drug": "SC起始劑量",
              "dose":
                  "TDD = 體重 * 0.5\n50% Basal (Lantus/Toujeo) + 50% Meal (Novorapid TID)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🧪 實驗室數值異常",
    "id": "chap_endo_04",
    "title": "鈣質代謝 (Calcium)",
    "subtitle": "Hypercalcemia & Hypocalcemia",
    "content": {
      "diagnosis": [
        "HyperCa: 症狀 Stones, Bones, Groans",
        "HypoCa: Chvostek's / Trousseau's signs",
      ],
      "treatment": [
        {
          "category": "高血鈣 (Hypercalcemia)",
          "items": [
            {"drug": "Fluids", "dose": "NS 200-500 mL/hr (首選)"},
            {"drug": "Calcitonin", "dose": "4 IU/kg SC q12h (速效)"},
            {"drug": "Bisphosphonate", "dose": "Zoledronic acid 4mg IV (長效)"},
          ],
        },
        {
          "category": "低血鈣 (Hypocalcemia)",
          "items": [
            {"drug": "Acute Sx", "dose": "Ca-Gluconate 1-2g IV over 10-20min"},
          ],
        },
      ],
    },
  },

  // ====================================================================
  // Group: ❤️ 心臟內科 (Cardiology)
  // ====================================================================
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_ecg_01",
    "title": "心電圖判讀 (ECG)",
    "subtitle": "STEMI 標準、Sgarbossa & 危急波形",
    "content": {
      "intro":
          "### STEMI 判讀標準 (ST Elevation)\n* **V2-V3**: 男≥40歲 >2mm; 男<40歲 >2.5mm; 女 >1.5mm\n* **其他導極**: >1mm (需兩個相鄰導極)\n* **LBBB (Sgarbossa)**: 同向 ST 上升 ≥1mm; 同向 ST 下降 ≥1mm (V1-V3); 反向 ST 上升 ≥25% S波\n\n### 危急徵象 (STEMI Equivalent)\n1. **Wellens'**: V2-V3 雙相 T 或 深倒置 T (LAD 嚴重狹窄)。\n2. **De Winter's**: ST 上斜壓低 + 高尖 T (LAD 阻塞)。\n3. **Posterior MI**: V1-V3 ST 下降 (鏡像變化)。",
      "diagnosis": [
        "[心包膜炎] 廣泛 ST 上升 + PR 下降。**V6 ST/T 高度比 > 0.25**",
        "[心包填塞] **Electrical Alternans** (QRS 忽大忽小), Low voltage",
        "[高血鉀] Peaked T -> P 消失 -> QRS 變寬 -> Sine wave",
        "[肺栓塞] S1Q3T3 (少見但特異), RV Strain (V1-V4 T inversion)",
      ],
      "treatment": [
        {
          "category": "處置原則",
          "items": [
            {
              "drug": "STEMI",
              "dose": "啟動導管室 (Code AMI)。目標 Door-to-Balloon < 90min",
            },
            {"drug": "LBBB / De Winter", "dose": "視同 STEMI 處理。照會心臟科"},
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_acs_01",
    "lastUpdate": "2026/01/29",
    "title": "急性冠心症 (ACS)",
    "subtitle": "PCI 時機、MONA 治療 & 術前停藥",
    "content": {
      "intro":
          "### 介入治療時機 (PCI Timing)\n1. **STEMI**: 發作 12hr 內 -> Primary PCI (90min 內)。若轉送需 >120min 則考慮溶栓。\n2. **NSTE-ACS**:\n   * **Immediate (<2hr)**: 休克、心衰竭、頑固心絞痛、致命心律不整。\n   * **Early (<24hr)**: GRACE > 140、Troponin (+)、ST 動態變化。\n\n### 術前停藥 (Anti-platelet)\n* **Ticagrelor / Prasugrel**: 停 5-7 天。\n* **Clopidogrel**: 停 5 天。",
      "diagnosis": [
        "[禁忌] **RV Infarct** (下壁/後壁 MI): **禁用 NTG/Morphine** (Preload 敏感)！",
        "[禁忌] **HOCM / Severe AS**: **禁用 NTG** (血管擴張 -> 休克)",
        "[鑑別] **Takotsubo**: 壓力性心肌病變，Trop-I 會升，需做導管排除阻塞",
      ],
      "treatment": [
        {
          "category": "A. 急性期藥物 (MONA)",
          "items": [
            {"drug": "Aspirin", "dose": "**300 mg (3#) 嚼碎** (最重要! 降低死亡率)"},
            {
              "drug": "Nitroglycerin (NTG)",
              "dose": "0.6 mg SL q5m (Max 3次)。**SBP<90 或 RV MI 禁用**",
            },
            {
              "drug": "P2Y12 Inhibitor",
              "dose": "**Ticagrelor** 180mg (首選) 或 **Clopidogrel** 300-600mg",
            },
            {
              "drug": "Heparin",
              "dose": "60 U/kg IV bolus -> 12 U/kg/hr (維持 aPTT 1.5-2倍)",
            },
          ],
        },
        {
          "category": "B. 術後藥物 (DAPT)",
          "items": [
            {"drug": "Aspirin + P2Y12", "dose": "至少維持 12 個月 (視出血風險調整)"},
            {
              "drug": "Statins",
              "dose": "高強度 (Atorvastatin 40-80mg) 目標 LDL < 55",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_htn_01",
    "lastUpdate": "2026/01/28",
    "title": "高血壓 (Hypertension)",
    "subtitle": "On Call: ESC/AHA 指引 & 常用藥物",
    "content": {
      "intro":
          "處置原則：**治療病人而非治療數字**。除高血壓急症外，避免短效舌下藥物 (Nifedipine SL) 以防中風。以下依據 **ESC 2024 & AHA 2022** 指引整理。",
      "diagnosis": [
        "[策略] 年輕人 (<50歲): **ACEI/ARB** 首選 (*降腦壓優*)",
        "[策略] 老人 (>65歲): **CCB/Thiazide** 首選",
        "[策略] 糖尿病/CKD: **ACEI/ARB** (監測 K/Cr, eGFR<30減量)",
        "[策略] CAD: **β-blocker + ACEI/ARB** (避免單用 CCB)",
        "[策略] 中風過: **Thiazide + ACEI/ARB** (Combine therapy)",
        "[策略] Afib: **β-blocker** 或 **Non-DHP CCB** (Rate control)",
        "[孕婦] **Labetalol** (首選) 或 Methyldopa; [警示] **禁用 ACEI/ARB**",
        "[危急] 高血壓腦病變: **意識改變**, **視乳頭水腫**",
        "[危急] 主動脈剝離: **撕裂痛**, **兩手血壓差 >20 mmHg**",
        "[危急] 肺水腫/MI: **呼吸窘迫**, **胸痛**",
      ],
      "treatment": [
        {
          "category": "A. 口服單方 (Single Agents)",
          "items": [
            {
              "drug": "Norvasc (Amlodipine)",
              "dose": "5mg 1# QD (**值班神藥**, 不知開啥就開這個; 注意下肢水腫)",
            },
            {
              "drug": "Concor (Bisoprolol)",
              "dose": "1.25-5mg QD (**β1 selective**, 適合降 HR; 留意心跳過慢)",
            },
            {
              "drug": "Adalat CC (Nifedipine)",
              "dose": "30/60mg QD (*長效緩釋型*, 勿磨粉)",
            },
            {
              "drug": "Herbesser (Diltiazem)",
              "dose": "30/60mg TID-QID (**Non-DHP**, 降心跳)",
            },
            {
              "drug": "Doxaben (Doxazosin)",
              "dose": "XL 4mg (長效) 或 2mg (速效); **α-blocker**, 注意姿勢性低血壓",
            },
            {
              "drug": "Aldactone (Spironolactone)",
              "dose": "25mg QD (**保鉀利尿劑**, 難治性高血壓)",
            },
          ],
        },
        {
          "category": "B. 口服複方 (Combination)",
          "items": [
            {"drug": "Exforge (ARB+CCB)", "dose": "5/80mg 或 5/160mg (Max 2#)"},
            {"drug": "Sevikar (ARB+CCB)", "dose": "5/20mg (Max 2#)"},
            {"drug": "Amtrel (ACEI+CCB)", "dose": "5/10mg (Max 2#)"},
            {"drug": "Co-Diovan (ARB+Thiazide)", "dose": "80/12.5mg (Max 4#)"},
            {"drug": "Exforge HCT (三合一)", "dose": "5/160/12.5mg (Max 2#)"},
          ],
        },
        {
          "category": "C. 針劑急用 (IV Push)",
          "items": [
            {
              "drug": "Trandate (Labetalol)",
              "dose": "0.5-1 amp IV push (**α+β blocker**, 會降 HR, 建議半支給)",
            },
            {
              "drug": "Perdipine (Nicardipine)",
              "dose": "3-5 mg IV push (較不影響 HR, 可先 3mg try)",
            },
          ],
        },
        {
          "category": "D. 連續輸注 (IV Pump)",
          "items": [
            {
              "drug": "Nicardipine Pump",
              "dose":
                  "4 amp (40mg) in 100mL NS -> **Run 10 mL/hr** (Stroke SBP<140)",
            },
            {
              "drug": "NTG (Millisrol) 原液",
              "dose":
                  "Run 1.2~24 cc/hr\n* 起始 **1.2 cc/hr**\n* Q3-5min 上調 **0.6 cc/hr**",
            },
            {
              "drug": "NTG Pre-mixed (推薦)",
              "dose":
                  "**50mg/250mL D5W**\n* 起始 **1.5 mL/hr**\n* Q3-5min 上調 **1.5 mL/hr**\n* Max 60 mL/hr (通常 12 mL/hr 即可)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_hf_acute",
    "lastUpdate": "2026/01/29",
    "title": "心衰竭總論 (Acute HF)",
    "subtitle": "分類、診斷 & 急性期處置",
    "content": {
      "intro":
          "### 診斷與分類 (LVEF)\n* **HFrEF**: EF ≤ 40% (四柱藥物治療核心)\n* **HFmrEF**: EF 41-49%\n* **HFpEF**: EF ≥ 50%\n\n### 急性期原則 (CHAMPIT)\n需排除致命可逆因子：**C** (ACS), **H** (HTN crisis), **A** (Arrhythmia), **M** (Mechanical), **P** (PE), **I** (Infection), **T** (Tamponade)。",
      "diagnosis": [
        "🧪 [BNP] NT-proBNP < 125 pg/mL 可排除心衰竭",
        "⚡️ [分型] **Warm & Wet** (最常見): 灌流好但水腫 -> 利尿劑/血管擴張",
        "⚡️ [分型] **Cold & Wet**: 休克且水腫 -> 強心劑 (Inotrope) + 利尿劑",
        "⚡️ [分型] **Cold & Dry**: 低血容/休克 -> 輸液測試",
        "☢️ [影像] CXR (肺水腫/心擴大), Echo (EF/瓣膜/Wall motion)",
      ],
      "treatment": [
        {
          "category": "A. 急性期藥物 (Acute)",
          "items": [
            {
              "drug": "Diuretics (Class I)",
              "dose": "**Lasix** IV push (劑量為口服 1-2.5倍)\n目標: 解除充血 (Congestion)",
            },
            {
              "drug": "Vasodilators",
              "dose": "**NTG** (若 SBP > 110): 降低 Preload/Afterload\n緩解喘症狀優於利尿劑",
            },
            {
              "drug": "Inotropes",
              "dose": "**Dobutamine / Milrinone**\n僅用於 Cold (低灌流/休克) 病人，勿常規使用",
            },
          ],
        },
        {
          "category": "B. 呼吸支持",
          "items": [
            {
              "drug": "BiPAP (NIV)",
              "dose": "呼吸窘迫 (RR>25, SpO2<90) 儘早使用\n可降低插管率",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_hf_chronic",
    "lastUpdate": "2026/01/29",
    "title": "慢性心衰竭 (Chronic HF)",
    "subtitle": "GDMT 四柱藥物 & 劑量滴定",
    "content": {
      "intro":
          "### HFrEF 四柱藥物 (Four Pillars)\n1. **ARNI** (首選) 或 ACEI/ARB\n2. **Beta-blocker** (穩定後給予)\n3. **MRA** (Spironolactone)\n4. **SGLT2i** (Dapa/Empagliflozin)\n\n*目標：盡早啟動並滴定至 Target Dose*",
      "diagnosis": [
        "[追蹤] 每日體重, I/O, 症狀 (端坐呼吸/PND)",
        "[出院] 需無充血 (Congestion free) 且已調整 GDMT",
      ],
      "treatment": [
        {
          "category": "1. ARNI / ACEI / ARB",
          "items": [
            {
              "drug": "ARNI (Entresto)",
              "dose":
                  "Start: **49/51 mg BID** (若由 ACEI 轉需停 36hr)\nTarget: 97/103 mg BID",
            },
            {
              "drug": "ACEI (Ramipril)",
              "dose": "Start: 1.25-2.5 mg QD\nTarget: 10 mg QD",
            },
            {
              "drug": "ARB (Valsartan)",
              "dose": "Start: 40 mg BID\nTarget: 160 mg BID",
            },
          ],
        },
        {
          "category": "2. Beta-blockers (HFrEF)",
          "items": [
            {
              "drug": "Bisoprolol (Concor)",
              "dose": "Start: 1.25 mg QD\nTarget: 10 mg QD",
            },
            {
              "drug": "Carvedilol",
              "dose": "Start: 3.125 mg BID\nTarget: 25 mg BID",
            },
            {
              "drug": "Metoprolol Succ.",
              "dose": "Start: 12.5-25 mg QD\nTarget: 200 mg QD (需用長效型)",
            },
          ],
        },
        {
          "category": "3. MRA & 4. SGLT2i",
          "items": [
            {
              "drug": "Spironolactone",
              "dose": "Start: 12.5-25 mg QD\nTarget: 50 mg QD (監測 K+ & Cr)",
            },
            {
              "drug": "SGLT2i (For All)",
              "dose":
                  "**Dapa / Empagliflozin** 10 mg QD\n*無需滴定，HFrEF/HFpEF 皆可用*",
            },
          ],
        },
        {
          "category": "其他藥物",
          "items": [
            {
              "drug": "Ivabradine",
              "dose": "SR + HR>70 + Max BB used\n5-7.5 mg BID",
            },
            {
              "drug": "Digoxin",
              "dose":
                  "0.125-0.25 mg QD (症狀控制/AF Rate control)\n目標濃度 0.5-0.9 (低劑量為佳)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_structural_heart",
    "title": "結構性心臟與大血管",
    "subtitle": "主動脈剝離、心包填塞 & 瓣膜禁忌",
    "content": {
      "intro":
          "### 危急重症處置\n1. **主動脈剝離 (Aortic Dissection)**: 目標 SBP 100-120, HR < 60。\n   * **給藥順序**: 先給 Beta-blocker (降心跳) -> 再給 Vasodilator (降壓)。**順序錯會增加剪力 (Shear stress)!**\n2. **心包填塞 (Tamponade)**: Beck's Triad (低血壓/頸靜脈怒張/心音遙遠)。\n   * **禁忌**: **不可給利尿劑** (除非肺水腫)，需輸液維持 Preload。\n3. **主動脈狹窄 (AS)** / **肥厚心肌 (HOCM)**: **禁用 NTG / Nicardipine** (避免休克)。",
      "diagnosis": [
        "[剝離] **撕裂痛** + **雙手血壓差 > 20**。CXR: 縱膈腔變寬。",
        "[填塞] **Pulsus Paradoxus**: 吸氣時 SBP 下降 > 10 mmHg。",
        "[雜音] 新的收縮期雜音 + MI -> 懷疑乳頭肌斷裂 (Papillary muscle rupture)",
      ],
      "treatment": [
        {
          "category": "A. 主動脈剝離 (Type A/B)",
          "items": [
            {
              "drug": "1. 降心跳 (首選)",
              "dose":
                  "**Trandate (Labetalol)** 10-20mg IV push (同時降壓降心跳)\n**Esmolol** Pump: 50-200 mcg/kg/min",
            },
            {
              "drug": "2. 降血壓 (次選)",
              "dose": "**Nicardipine** Pump: 5mg/hr (必先確認 HR 已控制)",
            },
            {"drug": "3. 止痛", "dose": "**Morphine** 2-4mg IV (減低交感興奮)"},
          ],
        },
        {
          "category": "B. 心包膜炎 (Pericarditis)",
          "items": [
            {
              "drug": "抗發炎",
              "dose": "**NSAIDs** (Ibuprofen) + **Colchicine** (預防復發)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_pad_ali",
    "title": "周邊動脈疾病 (PAD & ALI)",
    "subtitle": "ABI 判讀、跛行治療 & 6P 急症",
    "content": {
      "intro":
          "### 兩大類別\n1. **慢性 PAD**: 間歇性跛行 (休息緩解)。目標是降低心血管風險 (MACE) 與改善症狀。\n2. **急性肢體缺血 (ALI)**: **血管急症**！需立即 Heparin 化並照會血管外科 (CVS)。\n   * **6 Ps**: Pain, Pallor (蒼白), Pulselessness, Poikilothermia (冰冷), Paresthesia (麻), Paralysis (癱)。",
      "diagnosis": [
        "[ABI] **正常**: 1.0-1.4; **異常**: ≤ 0.90\n* **>1.4**: 血管鈣化 (常見於洗腎/糖尿病)，數值不可信，需改測 PVR/TBI。",
        "[Leriche] **三聯徵**: 跛行 + 股動脈搏動消失 + 勃起障礙。",
        "[ALI 分級] **Viable**: 無缺損; **Threatened**: 感覺/運動缺損 (需極緊急手術); **Irreversible**: 肌肉僵硬 (需截肢)。",
      ],
      "treatment": [
        {
          "category": "A. 慢性 PAD 管理",
          "items": [
            {
              "drug": "抗血小板",
              "dose": "Aspirin 或 Clopidogrel (有症狀或 ABI≤0.9 時給予)",
            },
            {
              "drug": "症狀控制",
              "dose":
                  "**Cilostazol (Pletal)** 100mg BID (改善跛行距離)\n*禁忌: 心衰竭 (HF) 患者禁用!*",
            },
            {"drug": "風險因子", "dose": "戒菸 (最重要)、高強度 Statin、血壓控制"},
          ],
        },
        {
          "category": "B. 急性肢體缺血 (ALI)",
          "items": [
            {
              "drug": "緊急抗凝血",
              "dose":
                  "**Heparin** IV STAT\n80 U/kg Bolus -> 18 U/kg/hr Infusion (維持 aPTT 1.5-2倍)",
            },
            {
              "drug": "血運重建",
              "dose": "緊急導管溶栓 (Thrombolysis) 或 外科取栓 (Thrombectomy)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "protocol_syncope_01",
    "title": "暈厥與術前評估 (Syncope)",
    "subtitle": "暈厥鑑別、姿勢性低血壓 & 術前風險",
    "content": {
      "diagnosis": [
        "[定義] **暈厥**: 眼前發黑/意識喪失 (心臟/神經); **眩暈**: 天旋地轉 (耳/腦)。",
        "[OH] **姿勢性低血壓**: 站立 3min 後 SBP 降 >20 或 DBP 降 >10。",
        "[POTS] 體位性心搏過速: 站立後 HR 增加 > 30 bpm。",
        "[高風險] **San Francisco Rule**: 心衰竭, Hct<30, ECG異常, SOB, SBP<90。",
        "[術前] 非心臟手術 MI 風險約 5% (65% 無症狀)。",
      ],
      "treatment": [
        {
          "category": "暈厥處置",
          "items": [
            {"drug": "Vasovagal (迷走神經)", "dose": "腳抬高、補充水分。避免誘發因子。"},
            {
              "drug": "心因性 (Arrhythmia)",
              "dose": "安排 24hr Holter 或 Event recorder。必要時裝 TCP/PPM。",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "❤️ 心臟內科",
    "id": "cardio_hyperlipidemia",
    "title": "脂質異常 (Hyperlipidemia)",
    "subtitle": "2025 台灣共識：風險分層與達標策略",
    "content": {
      "intro":
          "### 1. 評估重點 (Evaluation)\n* **時機**: 空腹 12h。**ACS 病人需於入院 24h 內檢測**。\n* **公式**: LDL = TC - HDL - (TG/5)。\n    *(限制: 若 TG > 400 或 LDL < 70 則不準，需直接測量)*\n* **代謝症候群 (Metabolic Syn.)**: 腹胖(M>90/F>80 cm)、TG ≥150、HDL <40/50、BP ≥130/85、AC Sugar ≥100 (5 取 3)。\n* **體徵**: \n    * Tendon Xanthomas: 跟腱/手伸肌 (提示 FH, LDL>300)。\n    * Eruptive Xanthomas: 丘疹 (提示 TG>1500)。\n\n### 2. 次發性成因排除\n* **LDL 升高**: 甲狀腺低下、腎病症候群、膽汁淤積。\n* **TG 升高**: 糖尿病、酒精、腎衰竭、肥胖。\n* **藥物**: Thiazide, BB, Steroids, Estrogen。",
      "diagnosis": [
        "### A. 次級預防 (已發病) - 積極治療",
        "**極高風險 Extreme (< 55 mg/dL)**:\nCAD 患者合併以下任一：\n1. 1年內曾 MI\n2. ≥2 次 MI 病史\n3. 多支血管阻塞\n4. 合併 DM\n5. 合併 PAD 或頸動脈狹窄\n*(註: 反覆血管事件者可考慮 < 40)*",
        "**非常高風險 Very High (< 70 mg/dL)**:\n1. 確診 ASCVD (ACS, Stable angina, Stroke/TIA, PAD)\n2. 影像證實顯著斑塊 (CT/導管顯示狹窄 ≥50%)",
        "------------------------------------",
        "### B. 初級預防 (未發病) - 風險導向",
        "**高風險 High (< 100 mg/dL)**: [立即用藥]\n1. 糖尿病\n2. CKD (eGFR<60 或 UACR≥30)\n3. LDL ≥ 190 (疑 FH)\n4. 鈣化指數 CAC ≥ 400",
        "**中風險 Moderate (< 115 mg/dL)**: [生活調整 3-6m]\n不符高風險，但危險因子 ≥ 2 項。",
        "**低風險 Low (< 130 mg/dL)**: [生活調整 3-6m]\n不符高風險，危險因子 0-1 項。",
        "*(危險因子: 高血壓, 抽菸, 早發冠心病家族史, HDL低, 年齡 M≥45/F≥55, 代謝症候群)*",
      ],
      "treatment": [
        {
          "category": "治療階梯 (Step-wise Approach)",
          "items": [
            {
              "drug": "Step 1: Statin",
              "dose": "啟動 **High-intensity** (預期降 ≥50%)\nACS 急性期應立即給予。",
            },
            {
              "drug": "Step 2: Ezetimibe",
              "dose": "若 6-8 週未達標或不耐受 Statin 時加入。\n(額外降 15-24%)",
            },
            {
              "drug": "Step 3: PCSK9i / Others",
              "dose":
                  "極高風險仍未達標時使用。\n包含單株抗體 (Evolocumab) 或 siRNA (Inclisiran)。\n或 ATP citrate lyase 抑制劑 (Bempedoic acid)。",
            },
          ],
        },
        {
          "category": "Statin 強度表 (Intensity)",
          "items": [
            {
              "drug": "高強度 (預期降LDL ≥50%)",
              "dose": "Atorvastatin **40-80mg**\nRosuvastatin **20-40mg**",
            },
            {
              "drug": "中強度 (預期降LDL 40%)",
              "dose":
                  "Atorvastatin 10-20mg\nRosuvastatin 5-10mg\nSimvastatin 20-40mg\nPravastatin 40-80mg\npitavastatin 2-4mg",
            },
          ],
        },
        {
          "category": "追蹤與其他目標",
          "items": [
            {"drug": "追蹤頻率", "dose": "起始/調整後 **6-8週** 複驗。\n達標後每 6-12 個月追蹤。"},
            {
              "drug": "其他目標",
              "dose": "BP < 130/80\nHbA1c < 7.0%\nNon-HDL-C = LDL目標 + 30",
            },
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🫁 胸腔內科 (Pulmonology)
  // ====================================================================
  {
    "group": "🫁 胸腔內科",
    "id": "chap_pulm_05",
    "title": "慢性阻塞性肺病 (COPD)",
    "subtitle": "AECOPD & Stable COPD",
    "content": {
      "diagnosis": ["肺量計 FEV1/FVC < 0.7", "評估症狀 (CAT/mMRC) 與惡化史"],
      "treatment": [
        {
          "category": "急性惡化 (AECOPD)",
          "items": [
            {"drug": "Bronchodilators", "dose": "SABA + SAMA 霧化吸入"},
            {"drug": "Steroids", "dose": "Prednisone 40 mg PO x 5 天"},
            {
              "drug": "Antibiotics",
              "dose": "Azithromycin / Doxycycline / Resp. FQ (若濃痰增加)",
            },
          ],
        },
        {
          "category": "慢性期首選",
          "items": [
            {"drug": "LAMA / LABA", "dose": "Tiotropium 等長效型"},
            {"drug": "ICS", "dose": "若 Eosinophil >300 或頻繁惡化時加用"},
          ],
        },
      ],
    },
  },
  {
    "group": "🫁 胸腔內科",
    "id": "chap_pulm_03",
    "title": "氣喘 (Asthma)",
    "subtitle": "Acute Exacerbation & Chronic Care",
    "content": {
      "diagnosis": [
        "肺量計: 阻塞且支氣管擴張劑後 FEV1 增加 >=12% 且 >=200 mL",
        "Methacholine 激發測試 (若肺量計正常)",
      ],
      "treatment": [
        {
          "category": "急性發作 (Acute Exacerbation)",
          "items": [
            {"drug": "Oxygen", "dose": "維持 SaO2 93-95%"},
            {
              "drug": "SABA (Albuterol)",
              "dose": "4-8 puffs 或 2.5-5 mg 霧化, q20min",
            },
            {"drug": "Ipratropium", "dose": "0.5 mg 霧化 (嚴重者加用)"},
            {"drug": "Steroids (IV)", "dose": "Methylprednisolone 125 mg q6h"},
          ],
        },
        {
          "category": "慢性控制 (Controller)",
          "items": [
            {
              "drug": "首選: ICS-Formoterol",
              "dose": "低劑量作為 Reliever (MART strategy)",
            },
            {"drug": "ICS", "dose": "依照階梯治療調整劑量"},
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🥨 胃腸肝膽科 (Gastroenterology & Hepatology)
  // ====================================================================
  {
    "group": "🥨 胃腸肝膽科",
    "id": "protocol_upper_gi",
    "title": "上消化道疾病 (Upper GI)",
    "subtitle": "GERD, PUD & UGIB 處置",
    "content": {
      "intro":
          "### 診斷重點\n1. **GERD**: 典型症狀 (火燒心) 可做 PPI Test。若有 **Alarm Features** (吞嚥困難/痛, 體重減輕, 貧血, 吐血, >60歲) -> 必做胃鏡 (EGD)。\n2. **PUD**: H. pylori (80% DU / 40% GU) 與 NSAIDs 是主因。GU 必切片除惡性。空腹痛=DU; 餐後痛=GU。\n3. **UGIB**: BUN/Cr > 36 提示 UGIB。出血量大時先 NPO + PPI + 輸液，24hr 內做胃鏡。",
      "diagnosis": [
        "[GERD] **Alarm Features**: Dysphagia, Odynophagia, Wt loss, Anemia, GI bleeding",
        "[PUD] **H. pylori**: UBT/Stool Ag (需停 PPI/抗生素 2週)。胃鏡切片 (CLO test)",
        "[UGIB] **Triad**: 吐血, 黑便, BUN升高。Shock index > 1 (HR>SBP) 表失血嚴重",
      ],
      "treatment": [
        {
          "category": "A. 胃食道逆流 (GERD)",
          "items": [
            {
              "drug": "PPI Test",
              "dose": "Omeprazole / Pantoprazole / Esomeprazole QD-BID 測試 2週",
            },
            {
              "drug": "H2 Blockers",
              "dose": "Famotidine 20-40mg BID (夜間突破性酸逆流有效)",
            },
          ],
        },
        {
          "category": "B. 消化性潰瘍 (PUD)",
          "items": [
            {
              "drug": "H. pylori 除菌",
              "dose":
                  "**四合一療法 (14天)**:\nPPI BID + Bismuth QID + Tetracycline 500 QID + Metronidazole 500 TID",
            },
            {"drug": "NSAID 潰瘍", "dose": "停用 NSAID。PPI 治療 4-8 週"},
          ],
        },
        {
          "category": "C. 上消化道出血 (UGIB)",
          "items": [
            {
              "drug": "PPI (High Dose)",
              "dose":
                  "**Nexium** (Esomeprazole) 80mg IV stat -> **8mg/hr** run 72hr\n(或 40mg IV BID)",
            },
            {
              "drug": "Variceal Bleeding",
              "dose":
                  "**Sandostatin** (Octreotide) 50mcg IV st -> 50mcg/hr\n**Terlipressin** 1mg q4-6h\n預防性抗生素: **Ceftriaxone** 1g QD",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🥨 胃腸肝膽科",
    "id": "protocol_liver_01",
    "title": "肝膽胰疾病 (Hepato-Biliary-Pancreatic)",
    "subtitle": "Cirrhosis, Cholecystitis & Pancreatitis",
    "content": {
      "intro":
          "### 診斷重點\n1. **Cirrhosis**: SAAG ≥ 1.1 (門脈高壓)。SBP 診斷: PMN ≥ 250。\n2. **Pancreatitis**: 診斷三中二 (典型痛 / Lipase>3倍 / CT)。TG>1000 需洗血或 Insulin。\n3. **Cholangitis**: Charcot triad (Fever, RUQ pain, Jaundice)。需緊急引流 (ERCP/PTCD)。",
      "diagnosis": [
        "[HE] **肝腦病變**: Ammonia 與病情不一定相關。看 Asterixis (撲翼震顫)。",
        "[SBP] **自發性腹膜炎**: Ascites PMN ≥ 250。常見 E. coli / Klebsiella。",
        "[Cholecystitis] **Murphy's sign (+)**。US: Wall > 4mm, Pericholecystic fluid。",
        "[Pancreatitis] **Ranson / BISAP score** 評估嚴重度。大量輸液為關鍵。",
      ],
      "treatment": [
        {
          "category": "A. 肝硬化併發症",
          "items": [
            {
              "drug": "肝腦病變 (HE)",
              "dose":
                  "**Lactulose** 30-45mL TID (目標軟便 2-3次/天)\n**Rifaximin** 550mg BID (二線)",
            },
            {
              "drug": "腹水 (Ascites)",
              "dose":
                  "**Spiro : Lasix = 100mg : 40mg** (比例 2.5:1)\n大量放水 (>5L) 需補 Albumin (6-8g per 1L)",
            },
            {"drug": "SBP", "dose": "**Ceftriaxone** 2g QD 或 **Flomoxef**"},
          ],
        },
        {
          "category": "B. 急性膽囊/膽管炎",
          "items": [
            {
              "drug": "抗生素",
              "dose":
                  "**Ceftriaxone + Metronidazole** (Cover GNB + Anaerobe)\n或 **Flomoxef**, **Tazocin**",
            },
            {"drug": "引流", "dose": "PTGBD (膽囊炎) 或 ERCP (膽管炎)"},
          ],
        },
        {
          "category": "C. 急性胰臟炎",
          "items": [
            {
              "drug": "輸液 (Hydration)",
              "dose":
                  "**LR / NS** 大量輸注 (250-500ml/hr) 維持尿量\n*痛控制: Morphine / Demerol*",
            },
            {
              "drug": "高血脂 (TG>1000)",
              "dose": "**Insulin infusion** 0.1 U/kg/hr (需補糖 D5W 防止低血糖)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🥨 胃腸肝膽科",
    "id": "protocol_lower_gi",
    "title": "下消化道與功能性障礙",
    "subtitle": "Ileus, Diarrhea, Constipation & Meds",
    "content": {
      "intro":
          "### 處置原則\n1. **Ileus (腸阻塞)**: 分機械性 (開刀史/腫瘤) vs 麻痺性 (電解質/藥物)。處置: NPO + NG decompression。\n2. **Diarrhea**: 急性多感染，慢性多功能性。警示: 發燒/血便勿用強效止瀉 (Imodium)。\n3. **Constipation**: 排除警示徵兆 (>50歲, 血便, 貧血)。",
      "diagnosis": [
        "[Ileus] **KUB**: 擴張腸氣。機械性有 Transition zone; 麻痺性瀰漫擴張。",
        "[Diarrhea] **C. diff**: 抗生素使用史 + 水瀉。驗 Stool Toxin。",
        "[Bladder] **掃描公式**: W x D x H x 0.7。餘尿 >400ml 建議導尿。",
      ],
      "treatment": [
        {
          "category": "A. 常用針劑 (Injectable)",
          "items": [
            {
              "drug": "止吐",
              "dose":
                  "**Primperan** 1amp IV/IM (EPS風險)\n**Novamin** 1amp IM (止吐強)\n**Zofran** (化療/術後)",
            },
            {
              "drug": "止痛 (腹痛)",
              "dose":
                  "**Buscopan** 1amp IV (解痙攣, BPH/青光眼禁)\n**Ketorolac** 1amp IM (腎差禁)\n**Morphine** 3-5mg IV (嚴重痛)",
            },
          ],
        },
        {
          "category": "B. 常用口服藥 (Oral)",
          "items": [
            {
              "drug": "便秘 (Laxatives)",
              "dose":
                  "**MgO** 1-2# BID (軟便)\n**Sennoside** 1-2# HS (刺激)\n**Dulcolax** 1-2# (強效, 吻合術後禁)",
            },
            {
              "drug": "腹瀉 (Antidiarrheal)",
              "dose":
                  "**Smecta** 1包 TID (吸附劑, 安全)\n**Imodium** (強效, 感染性/C.diff 禁)",
            },
            {
              "drug": "胃輕癱 / 脹氣",
              "dose": "**Erythromycin** 250mg 1# TID (促進蠕動)\n**Gascon** 1# TID",
            },
          ],
        },
        {
          "category": "C. 困難梭狀桿菌 (C. diff)",
          "items": [
            {
              "drug": "首選",
              "dose":
                  "**Vancomycin (PO)** 125mg QID x10d\n或 **Fidaxomicin** 200mg BID x10d",
            },
            {"drug": "次選/輕症", "dose": "**Metronidazole** 500mg TID (IV/PO)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🥨 胃腸肝膽科",
    "id": "protocol_hep_01",
    "lastUpdate": "2026/01/29",
    "title": "急性肝炎 (Acute Hepatitis)",
    "subtitle": "ALT 異常評估、B肝標記與治療",
    "content": {
      "intro":
          "### 評估原則\n1. **初步檢查**：ALT 高時必驗 AST, HBsAg, Anti-HCV, T.Bili, Lipase (排除胰臟炎), 排 Abdominal Echo, 並回顧**藥物史**。\n2. **B肝標記解讀**：\n   * **Anti-HBc IgM**: 急性感染指標 (30天內陽性, 此時 HBsAg 可能還在空窗期)。\n   * **HBeAg**: 病毒活躍指標。**REVEAL Study**: 肝硬化/肝癌風險 (非B肝 : HBeAg(-) : HBeAg(+) = 1 : 3 : 9)。\n   * **HBV DNA**: 確診 B 肝後評估病毒量與治療效果。",
      "diagnosis": [
        "[ALT 2-5倍] 不見得有意義。做 Survey, 可給 Silymarin。",
        "[ALT 5-10倍] **灰色地帶**。密切追蹤 (Close monitor), 考慮 SNMC。",
        "[ALT >10倍] **危急異常**。強烈建議 SNMC 治療, 若不治療需 QD 追蹤 ALT 防止 Liver Failure。",
        "[鑑別] **HBsAg(-)** 但高度懷疑急性 B 肝? 驗 **Anti-HBc IgM** (空窗期)。",
      ],
      "treatment": [
        {
          "category": "A. 保肝藥物 (Hepatoprotective)",
          "items": [
            {
              "drug": "Silymarin",
              "dose":
                  "1# BID (健保)\n*實證弱 (老鼠需 15# TID 才有效)。主要作為**安慰劑**防止病人去吃偏方/草藥*",
            },
            {
              "drug": "SNMC (Stronger Neo-Minophagen C)",
              "dose":
                  "**5 amp in 100mL NS QD** run 3-5 天\n*需自費 (約1750/天)。對降 ALT 有顯著效果。*",
            },
          ],
        },
        {
          "category": "B. 病毒性肝炎追蹤",
          "items": [
            {
              "drug": "Acute HBV",
              "dose": "支持性療法為主。監測 PT/INR (凝血功能) 與 Bilirubin (黃疸)。",
            },
            {
              "drug": "Chronic HBV",
              "dose": "符合健保規範時開始抗病毒藥物 (Entecavir/Tenofovir)。",
            },
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🫘 腎臟內科 (Nephrology)
  // ====================================================================
  {
    "group": "🫘 腎臟內科",
    "id": "protocol_aki_01",
    "title": "急性腎損傷 (AKI)",
    "subtitle": "KDIGO 分期、尿液沉渣 & AEIOU 洗腎時機",
    "content": {
      "intro":
          "### KDIGO 分期標準\n* **Stage 1**: Cr 上升 ≥0.3 或 1.5-1.9倍; UO < 0.5 (6-12hr)\n* **Stage 2**: Cr 上升 2.0-2.9倍; UO < 0.5 (≥12hr)\n* **Stage 3**: Cr 上升 3.0倍 或 ≥4.0 或 洗腎; UO < 0.3 (≥24hr)",
      "diagnosis": [
        "[鑑別] **Prerenal**: EAV↓ (心衰/肝硬化/敗血)。藥物: NSAIDs (縮入球), ACEI/ARB (放出球)。尿: **Hyaline casts**",
        "[鑑別] **ATN (壞死)**: 缺血 (Shock) 或 毒性 (Vanco/Contrast/Myoglobin)。尿: **Muddy brown casts**",
        "[鑑別] **AIN (間質)**: 過敏 (PNC/PPI/NSAIDs)。尿: **WBC casts**, Eosinophils",
        "[鑑別] **GN (絲球體)**: 血管炎/SLE。尿: **Dysmorphic RBC**, RBC casts",
      ],
      "treatment": [
        {
          "category": "A. 一般處置原則",
          "items": [
            {"drug": "體液不足", "dose": "等張輸液 (NS / Lactated Ringer's)"},
            {
              "drug": "體液過多",
              "dose":
                  "**Lasix** (Loop diuretic)。IV Bolus 與 Continuous infusion 效果相當",
            },
            {
              "drug": "無效藥物",
              "dose": "Dopamine (Low dose) 與 Nesiritide 無證據顯示有助益",
            },
          ],
        },
        {
          "category": "B. 特定病因治療",
          "items": [
            {
              "drug": "顯影劑 (Contrast)",
              "dose":
                  "預防勝於治療: **大量輸液 (Hydration)**。\n高風險者暫停 NSAIDs/Metformin/RAASi",
            },
            {
              "drug": "橫紋肌溶解 (Rhabdo)",
              "dose": "目標尿量 **3 mL/kg/hr**。\n若 pH<6.5 可給 Bicarb 鹼化 (注意低血鈣風險)",
            },
            {
              "drug": "肝腎症候群 (HRS)",
              "dose":
                  "**Terlipressin** + Albumin (首選)\n或 Octreotide + Midodrine + Albumin",
            },
            {"drug": "間質性腎炎 (AIN)", "dose": "移除致病藥物。考慮短期類固醇 (Steroids)"},
          ],
        },
        {
          "category": "C. 緊急洗腎適應症 (AEIOU)",
          "items": [
            {"drug": "A: Acidosis", "dose": "難治性酸中毒 (pH < 7.1)"},
            {"drug": "E: Electrolyte", "dose": "高血鉀 (HyperK > 6.5 或 ECG 變化)"},
            {
              "drug": "I: Intoxication",
              "dose": "可透析毒物: 鋰鹽 (Li), 乙二醇, 水楊酸, Theophylline",
            },
            {"drug": "O: Overload", "dose": "體液過載合併低血氧 (Refractory Hypoxemia)"},
            {"drug": "U: Uremia", "dose": "尿毒性心包膜炎, 腦病變 (Encephalopathy), 出血"},
          ],
        },
      ],
    },
  },
  {
    "group": "🫘 腎臟內科",
    "id": "chap_nephro_ckd",
    "title": "慢性腎臟病 (CKD)",
    "subtitle": "管理重點與藥物調整",
    "content": {
      "diagnosis": [
        "eGFR 分期: G1(>90), G2(60-89), G3a(45-59), G3b(30-44), G4(15-29), G5(<15)",
        "蛋白尿: ACR > 30 mg/g 為異常",
      ],
      "treatment": [
        {
          "category": "延緩惡化 (Renoprotection)",
          "items": [
            {"drug": "ACEI / ARB", "dose": "首選 (蛋白尿者)。注意高血鉀與 Cr 上升 (<30% 可接受)"},
            {
              "drug": "SGLT2 inhibitors",
              "dose": "Dapagliflozin / Empagliflozin (eGFR > 20 可使用)",
            },
          ],
        },
        {
          "category": "併發症管理",
          "items": [
            {
              "drug": "貧血 (Anemia)",
              "dose": "EPO / Darbepoetin (目標 Hb 10-11.5)",
            },
            {"drug": "高血磷", "dose": "磷結合劑 (Calcium acetate, Sevelamer)"},
            {"drug": "酸中毒", "dose": "Sodium Bicarbonate (維持 Bicarb > 22)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🫘 腎臟內科",
    "id": "chap_nephro_gn",
    "title": "腎絲球疾病 (Glomerular Disease)",
    "subtitle": "Nephritic vs Nephrotic, ANCA & Lupus",
    "content": {
      "intro":
          "### 兩大症候群鑑別\n1. **腎炎 (Nephritic)**: 發炎為主。**血尿** (RBC casts/Dysmorphic RBC)、高血壓、AKI。\n2. **腎病 (Nephrotic)**: 足細胞受損。**蛋白尿** (>3.5g/day)、水腫、低白蛋白 (<3.0)、高血脂。\n3. **切片**: 病因不明、快速惡化或懷疑系統性疾病時，為診斷黃金標準。",
      "diagnosis": [
        "[ANCA] **c-ANCA (PR3)**: GPA (Wegener's); **p-ANCA (MPO)**: MPA, EGPA",
        "[C3 低下] Lupus (SLE), PSGN (感染後), MPGN (C肝/冷凝球蛋白)",
        "[Anti-GBM] **Goodpasture**: 肺出血+腎衰竭 (線性 Linear 沈積)",
        "[PLA2R] **Membranous**: 原發性膜性腎病變特異性抗體",
        "[病理] **MCD**: 足突融合; **Diabetic**: K-W nodules; **Amyloid**: 剛果紅蘋果綠",
      ],
      "treatment": [
        {
          "category": "A. 腎炎症候群 (Nephritic)",
          "items": [
            {
              "drug": "ANCA 血管炎",
              "dose":
                  "GPA/MPA: 類固醇 + Cyclophosphamide / Rituximab\n*GPA常見上呼吸道(鼻竇)/肺結節*",
            },
            {
              "drug": "IgA 腎病變",
              "dose":
                  "最常見 GN。感冒後 1-3 天肉眼血尿 (Synpharyngitic)\n治療: ACEI/ARB 支持，蛋白尿嚴重者給類固醇",
            },
            {
              "drug": "Goodpasture",
              "dose":
                  "緊急 **血漿置換 (Plasmapheresis)** 移除抗體\n加上類固醇與 Cyclophosphamide",
            },
          ],
        },
        {
          "category": "B. 腎病症候群 (Nephrotic)",
          "items": [
            {
              "drug": "微小變化 (MCD)",
              "dose": "兒童最常見。光鏡正常/電鏡足突融合。\n對 **Steroids** 反應極佳",
            },
            {
              "drug": "膜性 (Membranous)",
              "dose":
                  "成人常見。原發性驗 **Anti-PLA2R**。\n**VTE 風險高**: 若 Alb < 2.5 需考慮預防性抗凝血",
            },
            {
              "drug": "FSGS",
              "dose": "排除次發性: HIV, 肥胖, 藥物 (Heroin)\n非裔美國人常見 APOL1 基因",
            },
            {
              "drug": "糖尿病腎病變",
              "dose": "典型病程: 微量白蛋白尿 -> 顯性蛋白尿\n嚴格控制血壓/血糖 (**SGLT2i** 可延緩惡化)",
            },
          ],
        },
        {
          "category": "C. 一般支持療法",
          "items": [
            {
              "drug": "降蛋白尿",
              "dose": "**ACEI / ARB** (降低腎絲球內壓)\n目標 BP < 130/80",
            },
            {
              "drug": "水腫控制",
              "dose": "限鹽 (<2g/day) + **Loop Diuretics** (Lasix)",
            },
            {"drug": "高血脂", "dose": "Statins (降低心血管風險)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🫘 腎臟內科",
    "id": "chap_nephro_urology",
    "title": "尿液分析與結石 (Urinalysis)",
    "subtitle": "沉渣判讀 & 腎結石急症",
    "content": {
      "diagnosis": [
        "[Cast] **RBC cast**: 腎絲球腎炎 (GN)",
        "[Cast] **WBC cast**: 間質性腎炎 (AIN), 腎盂腎炎 (Pyelo)",
        "[Cast] **Muddy Brown**: 急性腎小管壞死 (ATN)",
        "[Crystal] **信封狀**: Ca-Oxalate (乙二醇中毒/結石); **棺材蓋**: Struvite (感染)",
        "[Stone] **Urosepsis**: 結石+發燒+阻塞 -> **緊急引流 (PCN/Double-J)**",
      ],
      "treatment": [
        {
          "category": "腎結石急性期",
          "items": [
            {
              "drug": "止痛 (Analgesics)",
              "dose":
                  "**NSAIDs** (Ketorolac) 優於鴉片類 (但腎差禁用)\n**Morphine** (嚴重絞痛)",
            },
            {
              "drug": "排石 (MET)",
              "dose": "**Tamsulosin** (alpha-blocker) 0.4mg QD (適用 <10mm)",
            },
            {"drug": "大量輸液", "dose": "增加尿量推動結石"},
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🩸 血液腫瘤科 (Hematology & Oncology)
  // ====================================================================
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_01",
    "title": "貧血鑑別 (Anemia)",
    "subtitle": "鑑別邏輯、MCV 分類 & 溶血",
    "content": {
      "intro":
          "### 鑑別邏輯\n1. **Reticulocyte Index (RI)**：\n   * **RI < 2% (生成不足)**：看 MCV 分類 (工廠問題)。\n   * **RI > 2% (破壞/流失)**：溶血或急性出血。\n2. **鐵劑治療**：需治療至 Hb 正常後再持續 6 個月補足庫存。",
      "diagnosis": [
        "[小球性] **Microcytic (MCV<80)**: 缺鐵 (IDA), 地中海 (Thalassemia), 慢性病 (ACD)",
        "[正球性] **Normocytic (MCV 80-100)**: 溶血 (Hemolysis), 腎衰竭, 骨髓侵犯",
        "[大球性] **Macrocytic (MCV>100)**: B12/葉酸缺乏 (Megaloblastic), 肝病, MDS, 酗酒",
        "[指標] **Ferritin**: <15-30 ng/mL 確診 IDA (排除發炎假性升高)",
        "[指標] **Mentzer Index** (MCV/RBC): <13 地中海貧血; >13 缺鐵性貧血",
        "[溶血] Lab: LDH↑, Haptoglobin↓, Ind. Bilirubin↑, Retic↑",
        "[Coombs] **DAT(+)**: AIHA (溫型 IgG / 冷型 IgM)\n**DAT(-)**: TTP/HUS, PNH, G6PD",
      ],
      "treatment": [
        {
          "category": "A. 缺鐵性貧血 (IDA)",
          "items": [
            {
              "drug": "Oral Iron",
              "dose": "Ferrous sulfate 325mg TID (空腹吸收佳，但在飯後吃副作用少)",
            },
            {"drug": "IV Iron", "dose": "用於吸收不良或無法耐受口服者 (Ferrum)"},
          ],
        },
        {
          "category": "B. 巨球性貧血",
          "items": [
            {
              "drug": "B12 Deficiency",
              "dose":
                  "Vit B12 1000mcg IM qd x7d -> wk -> mo\n*補葉酸前務必先確認 B12，否則神經症狀惡化*",
            },
            {"drug": "Folate Deficiency", "dose": "Folic acid 1-5 mg PO qd"},
          ],
        },
        {
          "category": "C. 溶血性貧血 (AIHA)",
          "items": [
            {
              "drug": "Warm (IgG)",
              "dose": "類固醇 (Prednisolone 1mg/kg), Rituximab, 切脾",
            },
            {
              "drug": "Cold (IgM)",
              "dose": "保暖 (Avoid cold), Rituximab (類固醇無效)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_02",
    "title": "白血病 (Leukemia)",
    "subtitle": "AML, CML, CLL & APL 急症",
    "content": {
      "intro":
          "### 重點摘要\n1. **AML**: 骨髓 Blast ≥ 20% 或 Auer rods。ELN 分險分層決定移植與否。\n2. **APL (M3)**: 內科急症 (DIC 風險)！懷疑即給 ATRA，勿等基因報告。\n3. **CML**: t(9;22) BCR-ABL1。TKI 治療目標：3個月 <10%，12個月 <0.1% (MMR)。",
      "diagnosis": [
        "[AML] **Auer rods**: 幾乎確診 AML",
        "[AML] **ELN Risk**: Favorable (t(8;21), inv(16), NPM1); Adverse (-5, -7, TP53, FLT3-ITD)",
        "[CML] **Philadelphia (Ph+)**: t(9;22), BCR-ABL1",
        "[CLL] **Rai Staging**: 0期觀察; III/IV期 (貧血/血小板低) 需治療",
      ],
      "treatment": [
        {
          "category": "A. 急性骨髓性白血病 (AML)",
          "items": [
            {
              "drug": "標準治療 (7+3)",
              "dose": "Cytarabine (7天) + Anthracycline (3天)",
            },
            {
              "drug": "APL (M3) 急症",
              "dose": "**ATRA** (All-trans retinoic acid) 立即給予\n預防嚴重 DIC 出血",
            },
          ],
        },
        {
          "category": "B. 慢性白血病 (CML/CLL)",
          "items": [
            {"drug": "CML", "dose": "TKI (Imatinib, Dasatinib, Nilotinib)"},
            {
              "drug": "CLL",
              "dose": "BTKi (Acalabrutinib, Ibrutinib), Venetoclax",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_03",
    "title": "淋巴瘤 (Lymphoma)",
    "subtitle": "Hodgkin, NHL & Tumor Lysis Syndrome",
    "content": {
      "intro":
          "### 治療重點\n1. **Hodgkin**: Reed-Sternberg cells。ABVD 課表 (注意肺/心毒性)。\n2. **NHL (DLBCL)**: IPI Score 評估預後。R-CHOP 治療 (R 使用前必驗 B 肝)。\n3. **TLS (腫瘤溶解)**: 高尿酸/鉀/磷 -> 低鈣/腎衰竭。預防勝於治療。",
      "diagnosis": [
        "[HL] **Pathology**: Reed-Sternberg (貓頭鷹眼細胞)",
        "[NHL] **IPI Score**: Age>60, LDH高, ECOG差, Stage III/IV, Extranodal>1",
        "[TLS] **電解質**: Uric acid↑, K↑, P↑, Ca↓, Cr↑",
      ],
      "treatment": [
        {
          "category": "A. 化學治療",
          "items": [
            {
              "drug": "Hodgkin (HL)",
              "dose":
                  "**ABVD**: Adriamycin (心毒), Bleomycin (肺毒), Vinblastine, Dacarbazine",
            },
            {
              "drug": "NHL (DLBCL)",
              "dose":
                  "**R-CHOP**: Rituximab + CHOP\n*Rituximab 前需篩檢 HBsAg & Anti-HBc*",
            },
          ],
        },
        {
          "category": "B. 腫瘤溶解症候群 (TLS)",
          "items": [
            {"drug": "預防/治療", "dose": "大量輸液 (Hydration) + **Allopurinol**"},
            {"drug": "嚴重/高尿酸", "dose": "**Rasburicase** (G6PD 缺乏者禁用)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_04",
    "title": "多發性骨髓瘤 (Myeloma)",
    "subtitle": "CRAB 準則 & MDS",
    "content": {
      "intro":
          "### 診斷與急症\n1. **CRAB**: Calcium (>11), Renal (Cr>2), Anemia (Hb<10), Bone lesions。\n2. **脊髓壓迫**: 背痛+神經症狀 -> STAT MRI + Dexamethasone + 照會。\n3. **MDS**: 無效造血。IPSS-R 評分決定支持療法或移植。",
      "diagnosis": [
        "[診斷] **Plasma cells ≥ 10%** + CRAB 症狀",
        "[MDS] **Hypercellular marrow** with **Cytopenia** (無效造血)",
      ],
      "treatment": [
        {
          "category": "A. 多發性骨髓瘤 (MM)",
          "items": [
            {
              "drug": "Induction",
              "dose":
                  "Dara-VRd (Daratumumab + Bortezomib + Lenalidomide + Dex)",
            },
            {
              "drug": "高血鈣急症",
              "dose": "大量 NS 輸液 + Calcitonin (速效) + Zoledronic acid (長效)",
            },
            {"drug": "脊髓壓迫", "dose": "**Dexamethasone 10-16mg IV** + 緊急放療/手術"},
          ],
        },
        {
          "category": "B. 骨髓分化不良 (MDS)",
          "items": [
            {"drug": "低風險", "dose": "輸血支持, EPO, Lenalidomide (5q- syndrome)"},
            {"drug": "高風險", "dose": "HMA (Azacitidine) 或 異體幹細胞移植"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_05",
    "title": "血小板與凝血 (Hemostasis)",
    "subtitle": "ITP 機轉, TTP & HIT",
    "content": {
      "intro":
          "### 病生理機轉\n1. **ITP**: 自體抗體 (IgG) 結合血小板膜蛋白 (GPIIb/IIIa) -> 流經脾臟被巨噬細胞吞噬 -> 壽命縮短。\n2. **TTP**: ADAMTS13 缺乏 -> vWF 切割異常 -> 微血管血栓 (FAT RN 五聯徵)。",
      "diagnosis": [
        "[ITP] **排除法**: 抹片正常, 無肝脾腫大。PLT > 30k 且無出血可觀察。",
        "[TTP] **FAT RN**: Fever, Anemia (MAHA), Thrombocytopenia, Renal, Neuro",
        "[HIT] **4Ts Score**: Heparin 使用後 5-10 天 PLT 降 >50%。",
      ],
      "treatment": [
        {
          "category": "A. 免疫性 (ITP)",
          "items": [
            {"drug": "一線治療", "dose": "Prednisolone 1mg/kg 或 IVIG (急需提升時)"},
            {"drug": "二線治療", "dose": "TPO-RA (Eltrombopag), Rituximab, 切脾"},
          ],
        },
        {
          "category": "B. 血栓性微血管病變 (TTP)",
          "items": [
            {"drug": "救命關鍵", "dose": "**血漿置換 (Plasma Exchange)** + 類固醇"},
            {"drug": "禁忌", "dose": "❌ **禁止輸血小板** (加重血栓)"},
          ],
        },
        {
          "category": "C. 肝素引起 (HIT)",
          "items": [
            {"drug": "處置", "dose": "立即**停用 Heparin** (含管路沖洗)，改用 Argatroban"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_06",
    "title": "腫瘤急症 (Oncologic Emergencies)",
    "subtitle": "TLS, HyperCa, SVC & SCC",
    "content": {
      "intro":
          "### 病生理機轉\n1. **TLS (腫瘤溶解)**：細胞崩解 -> 釋放 K/P/Nucleic acid -> 高尿酸(腎衰竭)、高血鉀(心律不整)、低血鈣(抽筋)。\n2. **HyperCa (高血鈣)**：破骨細胞活性↑ + 腎重吸收↑ + PTHrP 分泌 -> 意識混亂/多尿。\n3. **SVC Syndrome**：縱膈腔腫瘤壓迫上腔靜脈 -> 回流受阻 -> 水腫/怒張。\n4. **SCC (脊髓壓迫)**：腫瘤壓迫脊髓/血管 -> 水腫/缺血 -> 癱瘓/失禁。",
      "diagnosis": [
        "[TLS] **Labs**: Uric acid↑, K↑, P↑, Ca↓, Cr↑ (常見於高周轉率腫瘤)",
        "[HyperCa] **Sx**: Stones, Bones, Groans, Psychic moans",
        "[SCC] **Sx**: 背痛 (早) -> 無力/感覺異常 -> 大小便失禁 (晚)。**STAT MRI!**",
      ],
      "treatment": [
        {
          "category": "A. 腫瘤溶解症候群 (TLS)",
          "items": [
            {"drug": "預防/治療", "dose": "大量輸液 (Hydration) + **Allopurinol**"},
            {"drug": "嚴重/高尿酸", "dose": "**Rasburicase** (G6PD 缺乏者禁用)"},
          ],
        },
        {
          "category": "B. 惡性高血鈣 (Hypercalcemia)",
          "items": [
            {"drug": "急性期", "dose": "大量 NS 輸液 + **Calcitonin** (速效)"},
            {
              "drug": "維持期",
              "dose": "**Bisphosphonate** (Zoledronic acid) (慢效持久)",
            },
          ],
        },
        {
          "category": "C. 脊髓壓迫 (SCC)",
          "items": [
            {
              "drug": "減壓",
              "dose": "**Dexamethasone 10-16mg IV** stat + 緊急放療/手術",
            },
          ],
        },
        {
          "category": "D. 發燒性嗜中性球低下 (FN)",
          "items": [
            {
              "drug": "抗生素",
              "dose": "必 Cover Pseudomonas (Cefepime/Tazocin/Meropenem)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "protocol_chemo_toxicity",
    "title": "化學治療副作用 (Chemo Toxicity)",
    "subtitle": "N/V 機轉、器官毒性與處置",
    "content": {
      "intro":
          "### 病生理機轉 (Pathophysiology)\n1. **噁心嘔吐 (CINV)**：藥物刺激第四腦室 **CTZ**，釋放 Dopamine/Serotonin 傳至嘔吐中樞。\n2. **口腔黏膜炎**：阻斷基底層幹細胞分裂 -> 黏膜萎縮 (約給藥 1 週後高峰)。\n3. **骨髓抑制**：抑制造血細胞分化 -> 貧血、出血、感染 (Neutropenia)。",
      "diagnosis": [
        "[分類] **急性嘔吐**: 給藥 4-10hr (Serotonin 為主); **延遲嘔吐**: >24hr (Substance P 為主)",
        "[便秘] **Vinca Alkaloids** (Vincristine) 神經毒性 -> 抑制腸蠕動 (Adynamic ileus)",
        "[腹瀉] **5-FU / MTX** -> 干擾上皮分裂 -> 黏膜萎縮",
        "[出血性膀胱炎] **Cyclophosphamide / Ifosfamide** 代謝物 **Acrolein** 沉積",
        "[心臟毒性] **Anthracyclines** (Doxorubicin) -> 產生自由基 (Free radicals) 破壞心肌",
        "[神經毒性] **Taxanes / Vinca** -> 破壞微管體 (Microtubules) -> 手腳麻木",
      ],
      "treatment": [
        {
          "category": "A. 噁心嘔吐 (N/V)",
          "items": [
            {
              "drug": "預防性 (Pre-med)",
              "dose":
                  "5-HT3 antagonist (Ondansetron) + Steroid (Dexamethasone) + NK1 antagonist (Aprepitant)",
            },
            {
              "drug": "突破性 (Breakthrough)",
              "dose": "Metoclopramide (Dopamine antagonist) 或 Lorazepam",
            },
          ],
        },
        {
          "category": "B. 器官毒性解毒/預防",
          "items": [
            {
              "drug": "出血性膀胱炎",
              "dose": "大量輸液 (Hydration) + **Mesna** (中和 Acrolein)",
            },
            {"drug": "神經毒性", "dose": "補充 B6 / Glutamine (效果有限)，嚴重時需減量或停藥"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "chap_hema_mpd",
    "title": "骨髓增生性疾病 (MPD)",
    "subtitle": "PV, ET & Pathophysiology",
    "content": {
      "intro":
          "### 病生理機轉\n1. **PV (真性多血症)**：造血幹細胞異常，**不依賴 EPO** 自主增生。症狀 (頭痛/視力模糊) 來自血液黏滯度高。\n2. **ET (原發性血小板增多)**：巨核細胞過度增生。血小板雖多但有 **功能缺陷 (Qualitative defect)** -> 易血栓也易出血。",
      "diagnosis": [
        "[PV] Hb > 16.5(男)/16.0(女), JAK2 V617F Mutation (+), EPO 低",
        "[ET] PLT > 450k, JAK2/CALR/MPL Mutation (+), 排除反應性增多",
        "[危急] **Hyperviscosity**: 視力改變、頭暈、中風徵兆",
      ],
      "treatment": [
        {
          "category": "A. 真性多血症 (PV)",
          "items": [
            {"drug": "放血 (Phlebotomy)", "dose": "目標 Hct < 45%"},
            {"drug": "細胞減量", "dose": "Hydroxyurea (Hydrea) 或 Interferon"},
            {"drug": "預防血栓", "dose": "低劑量 Aspirin 100mg QD"},
          ],
        },
        {
          "category": "B. 原發性血小板增多症 (ET)",
          "items": [
            {"drug": "高風險者", "dose": "Hydroxyurea 或 Anagrelide (抑制巨核細胞成熟)"},
            {"drug": "Aspirin", "dose": "用於預防血管栓塞 (若有出血傾向需謹慎)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "hema_pbsct_complete",
    "title": "週邊血液幹細胞移植 (PBSCT)",
    "subtitle": "原理、適應症、流程與併發症管理",
    "content": {
      "intro":
          "### 核心原理\n1. **動員 (Mobilization)**: 化療後給予 **G-CSF**，使骨髓 HSC 釋放至週邊血 (增加 10-300 倍)，再經白血球分離術收集。\n2. **PBSCT vs. BMT 優勢**:\n   * **免麻醉**: 無全身麻醉風險與疼痛。\n   * **恢復快**: 血小板恢復比 BMT 快 **14 天以上**，減少輸血。\n   * **少汙染**: 較不易受骨髓內癌細胞汙染。\n3. **間葉系幹細胞 (MSC)**: 具再生潛力，加速造血恢復。",
      "diagnosis": [
        "### 1. 適應症 (Indications)",
        "• **自體 (Auto)**: 實體腫瘤 (鼻咽/卵巢/腎癌)、淋巴瘤、AML/ALL。",
        "• **異體 (Allo)**: 白血病 (AML/ALL/CML)、MDS、SAA、重度海洋性貧血。",
        "• **特殊**: 癌細胞侵犯骨髓者、骨盆腔曾放療無法抽骨髓者。",
        "------------------------------------",
        "### 2. 併發症徵兆 (Signs)",
        "• **肝靜脈阻塞 (VOD/SOS)**: 黃疸 + 體重增加 (水腫) + 肝腫大/腹痛。",
        "• **急性排斥 (aGVHD)**: 發生於 3 個月內。皮膚紅疹、腹瀉/嘔吐、肝指數上升。",
        "• **感染**: 中性球低下發燒、黏膜炎 (Mucositis)。",
      ],
      "treatment": [
        {
          "category": "A. 移植流程 (Workflow)",
          "items": [
            {
              "drug": "1. 植前準備",
              "dose": "HLA 配對、病毒篩檢 (HBV/HCV/HIV/CMV)、置放 Hickman/Port-A、牙科評估。",
            },
            {
              "drug": "2. 調理 (Conditioning)",
              "dose":
                  "高劑量化療 (High-dose Chemo) ± TBI\n目的: 殺滅癌細胞 (騰出空間) + 抑制免疫 (防排斥)。",
            },
            {
              "drug": "3. 輸注與防護",
              "dose": "經導管輸注 (監測 EKG/溶血)。\n住 HEPA 房、低菌飲食 (熟食)。",
            },
          ],
        },
        {
          "category": "B. 併發症處置 (Management)",
          "items": [
            {
              "drug": "VOD / SOS 照護",
              "dose": "處置: **嚴格限水/限鈉**、使用利尿劑。\n監測: **每日量體重、腹圍**。",
            },
            {
              "drug": "GVHD 預防與治療",
              "dose":
                  "預防: **MTX + Cyclosporine (CsA) + Steroids**。\n治療: 增加類固醇劑量。",
            },
            {"drug": "感染控制", "dose": "保護性隔離。移植後免疫空窗期需防範細菌、CMV、黴菌。"},
          ],
        },
        {
          "category": "C. 特殊技術 (Advanced)",
          "items": [
            {
              "drug": "迷你移植 (Mini-SCT)",
              "dose":
                  "**原理**: 減低劑量調理 (RIC)，依賴 **GVL (植體抗癌)** 效應。\n**對象**: >50歲、共病多不適合高劑量者。\n**感受性**: CML/Lymphoma (佳) > ALL (差)。",
            },
            {"drug": "CD34+ 純化", "dose": "自體移植使用。利用磁珠去除癌細胞，降低復發率。"},
          ],
        },
      ],
    },
  },
  {
    "group": "🩸 血液腫瘤科",
    "id": "protocol_hema_pre_bmt_check",
    "title": "移植前評估清單 (Pre-BMT)",
    "subtitle": "Recipient Evaluation Protocol v1.0",
    "content": {
      "intro":
          "### 核心資訊 (Baseline)\n1. **基本**: Name / Age / Gender / Dx\n2. **移植種類**: Auto vs Allo (Matched/Haplo) vs Syngeneic\n3. **幹細胞來源**: PBSC / Bone Marrow / Cord Blood\n4. **調理處方**: Conditioning Regimen",
      "diagnosis": [
        "[重要] **牙科會診**: 拔牙前務必與血液科討論 (出血/感染風險)。",
        "[重要] **放射腫瘤**: 若需 TBI，需在 HSCT 前 **一個月** 會診。",
        "[重要] **心臟超音波**: 必做 LVEF 評估。",
        "[重要] **Water's View**: 耳鼻喉科會診前先照 (32009c)。",
      ],
      "treatment": [
        {
          "category": "A. 會診 (Consultations)",
          "items": [
            {
              "drug": "必會科別",
              "dose":
                  "1. **Neuro** (神經)\n2. **Psych** (精神)\n3. **ENT** (耳鼻喉 - 先照 Water's view)\n4. **Dent** (牙科 - 拔牙需討論)\n5. **Gyn** (婦科 - 女性)\n6. **Derma** (皮膚)\n7. **CV** (心臟 - 排 Echo)\n8. **Diet** (營養)\n9. **Inf** (感染科)",
            },
            {
              "drug": "選填 / 視情況",
              "dose":
                  "1. **Urology** (泌尿 - 男性)\n2. **Social Worker** (社工 - 濾水器補助)\n3. **Radio-Onco** (放腫 - 若需 TBI)",
            },
          ],
        },
        {
          "category": "B-D. 器官影像與功能",
          "items": [
            {
              "drug": "ENT & Chest",
              "dose":
                  "Water's view (32009c)\nCXR\nSpirometry (17004-207)\nDLCO (17009-207)",
            },
            {
              "drug": "Heart & GI",
              "dose": "EKG\nCardiac Echo (LVEF)\nStool OB (P002)\nKUB (32006c)",
            },
          ],
        },
        {
          "category": "E-G. 感染與免疫標記",
          "items": [
            {
              "drug": "免疫/血庫",
              "dose":
                  "SPEP, IgA, IgG, IgM\nVDRL (S001)\nAnti-A/B IgM (若血型不合 Allo)\n*HLA typing (Confirm DNA compatibility)*",
            },
            {
              "drug": "病毒肝炎",
              "dose":
                  "HBsAg, Anti-HBs, Anti-HBc\nAnti-HCV\n*若陽性加驗: HBV DNA / HCV RNA*",
            },
            {
              "drug": "病毒與其他",
              "dose":
                  "Anti-HIV (I184)\nAnti-HTLV I/II (I033)\nCMV IgG/IgM\nSerum Crypto Ag\nSerum Aspergillus Ag (I190)",
            },
          ],
        },
        {
          "category": "H. 全套細菌培養 (Pan-culture)",
          "items": [
            {
              "drug": "檢體部位",
              "dose":
                  "1. **Stool** (+Clostridium/Campylobacter)\n2. **Anal Swab** (VRE)\n3. **Urine**\n4. **Nasal Swab** (Bac/Fungus)\n5. **Throat Swab** (Bac/Fungus)\n6. **Sputum** (G/S, Bac, TB, Fungus)\n7. **Port-A Blood** (Bac/Fungus)",
            },
          ],
        },
        {
          "category": "J. 行政與護理",
          "items": [
            {
              "drug": "流程確認",
              "dose":
                  "1. 聯絡 10D 護理長 (衛教/Protocol)\n2. 通知血庫 (移植時間)\n3. 確認化療藥物庫存\n4. 確認藥物過敏史",
            },
          ],
        },
      ],
    },
  },

  {
    "group": "🩸 血液腫瘤科",
    "id": "protocol_hema_allo_orders",
    "title": "異體移植常規醫囑 (Allo-SCT Orders)",
    "subtitle": "預防用藥、全血型輸血規範與排程",
    "content": {
      "intro":
          "### 核心摘要\n1. **輸血通則**: 依據 Major/Minor Mismatch 選擇 Phase II/III 血品。\n2. **記憶口訣**: \n   * **Major**: RBC 給 O (跟Recipient)，血漿給 AB (跟Donor)。\n   * **Minor**: RBC 給 O (跟Donor)，血漿給 AB (跟Recipient)。\n3. **Infusion**: 嚴禁使用過濾器 (No Filter)。\n4. **Cefepime**: D0 ~ D+2 預防性使用。",
      "diagnosis": [
        "[護理] **BMT Diet**, I/O Q8H, BW/Girth QD。",
        "[護理] N/S 漱口, **Betadine 坐浴**。",
        "[細胞] 若 CD34 > 5x10^6/kg，多餘部分冰存至 Engraftment。",
        "[入院] CXR, KUB, Port-A culture, Oral virus culture, **DNA-STR (☆重要)**。",
      ],
      "treatment": [
        {
          "category": "A. 預防性用藥 (Prophylaxis)",
          "items": [
            {
              "drug": "Baktar (PCP)",
              "dose": "2# BID (D-7 至 D-2)\n*Engraftment 後恢復使用*",
            },
            {
              "drug": "Cefepime",
              "dose": "**2g Q12H** (D0 至 D+2)\n*此期間暫停 Cravit*",
            },
            {"drug": "Micafungin", "dose": "50mg QD (D-8 開始)\n*視情況調整劑量*"},
            {
              "drug": "G-CSF (Filgrastim)",
              "dose": "300mcg QD (D+1 開始)\n*Stop if WBC > 4000 / ANC > 2000*",
            },
          ],
        },
        {
          "category": "B. 幹細胞輸注 (D0)",
          "items": [
            {
              "drug": "Pre-medication",
              "dose": "Vena 1 amp + Solu-cortef 100mg IV (輸注前 15min)",
            },
            {
              "drug": "輸注禁忌",
              "dose":
                  "❌ **No Leukocyte Filter** (不可用過濾器)\n✅ **On EKG Monitor**",
            },
          ],
        },
        {
          "category": "C. 輸血規範 (全血型通用)",
          "items": [
            {
              "drug": "基本原則",
              "dose":
                  "1. 所有血品需 **Irradiated (輻射照射)**\n2. 輸血前給 Vena 1 amp\n3. 使用 **Phase II/III** (植入期) 標準",
            },
            {
              "drug": "1. Compatible (同血型)",
              "dose": "RBC: **同血型**\nPlt/FFP: **同血型**",
            },
            {
              "drug": "2. Major (大排斥)",
              "dose":
                  "情境: R有抗體 (如 A捐給O)\nRBC: **Recipient 型** (或 O)\nPlt/FFP: **Donor 型** (或 AB)",
            },
            {
              "drug": "3. Minor (小排斥)",
              "dose":
                  "情境: D有抗體 (如 O捐給A)\nRBC: **Donor 型** (或 O)\nPlt/FFP: **Recipient 型** (或 AB)",
            },
            {
              "drug": "4. Bi-directional (雙向)",
              "dose":
                  "情境: 互相排斥 (如 A捐給B)\nRBC: **Type O** (萬用)\nPlt/FFP: **Type AB** (萬用)",
            },
          ],
        },
        {
          "category": "D. 抽血排程 (Lab Schedule)",
          "items": [
            {
              "drug": "每週一 (QW1)",
              "dose": "CBC, SMAC (含 Ca/P/Mg), **CMV PCR**, **Aspergillus Ag**",
            },
            {
              "drug": "每週四 (QW4)",
              "dose": "CBC, Renal, Liver, Na/K, **CsA Level**",
            },
            {"drug": "週一四六 (Q146)", "dose": "CBC/DC (監測球數回升)"},
            {
              "drug": "其他",
              "dose": "One-touch Sugar QOD (每兩天)\nCsA Level: 週一、週四驗",
            },
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🦠 感染科 (Infectious Diseases)
  // ====================================================================
  {
    "group": "🦠 感染科",
    "id": "protocol_id_basic",
    "title": "抗生素基礎原則",
    "subtitle": "Loading Dose, 培養判讀 & 常用觀念",
    "content": {
      "intro":
          "### 開藥前三問\n1. **Focus**：感染源在哪？(Lung/Urine/Skin/BSI?)\n2. **Severity**：病人有無容錯空間？(Shock? Immunocompromised?) -> 決定是否要從強藥開始。\n3. **Pathogen**：常見菌種？(GNB/GPC/Anaerobe/MDRO?)\n\n### 重要觀念\n* **Loading Dose**: 為了快速達到有效濃度 (特別是 Vanco, Teico, Colistin)。\n* **污染判讀**: B/C 長 *Corynebacterium, Bacillus, Micrococcus* 多為污染 (除非 2 套都長)。\n* **K.P BSI**: 務必會診眼科排除眼內炎 (Endophthalmitis)。\n* **Daptomycin**: 監測 CPK (橫紋肌溶解)，不可用於肺炎 (被 Surfactant 分解)。",
      "diagnosis": [],
      "treatment": [],
    },
  },
  {
    "group": "🦠 感染科",
    "id": "protocol_id_common",
    "title": "常見感染症治療",
    "subtitle": "UTI, CAP, HAP, Cellulitis, Meningitis",
    "content": {
      "diagnosis": [
        "[UTI] **U/A**: WBC ≥ 100~200 為顯著 Pyuria。若無症狀且 U/A 乾淨，U/C 長菌可能是污染。",
        "[CAP] **S/C 品質**: WBC>25, Epithelial<10 才是好痰。可驗 Urine Ag (Pneumo/Legionella)。",
        "[Cellulitis] **S. aureus**: 有膿/傷口/擴散快; **Streptococcus**: 無膿/擴散慢/淋巴腫。",
        "[Meningitis] **Age > 50**: 需 Cover *Listeria* (加 Ampicillin)。",
        "[IE] **Echo**: TEE 優於 TTE。MRSA 菌血症建議必排 Echo。",
      ],
      "treatment": [
        {
          "category": "A. 泌尿道感染 (UTI)",
          "items": [
            {"drug": "輕微/預防", "dose": "Fosfomycin (口服粉劑)"},
            {"drug": "住院首選", "dose": "Ceftriaxone (Sintrix) 1-2g QD"},
            {
              "drug": "嚴重/ESBL risk",
              "dose": "Ertapenem 1g QD (Cover ESBL, 不 Cover Pseudo)",
            },
            {"drug": "Shock", "dose": "Doripenem / Meropenem"},
          ],
        },
        {
          "category": "B. 社區型肺炎 (CAP)",
          "items": [
            {
              "drug": "輕症/門診",
              "dose": "Augmentin 或 Unasyn ± Azithromycin (黴漿菌)",
            },
            {"drug": "住院", "dose": "Ceftriaxone + Azithromycin/Doxycycline"},
            {
              "drug": "Aspiration",
              "dose": "Unasyn 或 Ceftriaxone + Metronidazole (厭氧菌)",
            },
          ],
        },
        {
          "category": "C. 院內肺炎 (HAP/VAP)",
          "items": [
            {"drug": "原則", "dose": "需 Cover **Pseudomonas**"},
            {
              "drug": "經驗性",
              "dose": "Tazocin / Cefepime / Ceftazidime (Brosym)",
            },
            {"drug": "升階", "dose": "Meropenem / Doripenem (注意: Ertapenem 無效!)"},
          ],
        },
        {
          "category": "D. 蜂窩性組織炎 (Cellulitis)",
          "items": [
            {"drug": "輕度 (口服)", "dose": "Cephalexin (Keflex) 或 Clindamycin"},
            {"drug": "中度 (住院)", "dose": "Oxacillin (MSSA首選) 或 Cefazolin"},
            {
              "drug": "嚴重/MRSA risk",
              "dose": "Vancomycin / Teicoplanin / Daptomycin / Linezolid",
            },
          ],
        },
        {
          "category": "E. 細菌性腦膜炎",
          "items": [
            {
              "drug": "經驗性 (<50歲)",
              "dose": "Vancomycin + Ceftriaxone (2g q12h)",
            },
            {
              "drug": "經驗性 (>50歲)",
              "dose": "Vancomycin + Ceftriaxone + **Ampicillin** (2g q4h)",
            },
            {"drug": "Steroids", "dose": "Dexamethasone (抗生素前給予)"},
          ],
        },
      ],
    },
  },
  {
    "group": "🦠 感染科",
    "id": "protocol_id_mdro",
    "title": "多重抗藥性菌 (MDRO)",
    "subtitle": "ESBL, MRSA, VRE, CRAB, CRE",
    "content": {
      "intro":
          "### 治療策略\n1. **ESBL**: 首選 Carbapenem。Cefepime/Tazocin 效果較差 (特別是 High inoculum)。\n2. **AmpC**: 避開 1-3 代 Cefa。首選 Cefepime 或 Carbapenem。\n3. **MRSA**: 菌血症需除感染源 (管路/IE)。Vanco 需測 Trough level。\n4. **CRAB**: Colistin + (Meropenem/Tigecycline/Sulbactam)。",
      "diagnosis": [
        "[MRSA] **B/C 陽性**: 必找 Source (CVC? IE? Osteo?)",
        "[ESBL] **特徵**: 1-3 代 Cefa 抗藥。E. coli / K.P 常見。",
        "[AmpC] **特徵**: 2 代 Cefa 抗藥 (ESBL 通常 S)。Enterobacter / Citrobacter 常見。",
        "[CRE/CRAB] **全抗藥**: 需組合療法或新藥 (Cefiderocol, Zavicefta)。",
      ],
      "treatment": [
        {
          "category": "A. MRSA (GPC)",
          "items": [
            {
              "drug": "Vancomycin",
              "dose": "需 Loading。監測 Trough (15-20 mcg/mL)\nMIC ≥ 2 建議換藥",
            },
            {
              "drug": "Teicoplanin",
              "dose": "Loading (q12h x3) -> Maintain。不適合 IE/Meningitis",
            },
            {"drug": "Daptomycin", "dose": "8-12 mg/kg。**肺炎無效**。監測 CPK"},
            {"drug": "Linezolid", "dose": "口服吸收佳。肺炎/皮膚有效。注意骨髓抑制"},
          ],
        },
        {
          "category": "B. ESBL / AmpC (GNB)",
          "items": [
            {
              "drug": "ESBL 首選",
              "dose": "**Ertapenem** (社區) 或 **Meropenem** (重症)",
            },
            {
              "drug": "AmpC 首選",
              "dose": "**Cefepime** 或 **Carbapenem** (Tazocin 不建議)",
            },
            {"drug": "Fosfomycin", "dose": "可單用於 ESBL UTI (E. coli 效果 > K.P)"},
          ],
        },
        {
          "category": "C. VRE (腸球菌)",
          "items": [
            {"drug": "Linezolid", "dose": "抑菌性。適合肺炎/軟組織"},
            {"drug": "Daptomycin", "dose": "殺菌性。適合菌血症/心內膜炎 (需高劑量)"},
          ],
        },
        {
          "category": "D. CRAB (鮑氏不動桿菌)",
          "items": [
            {
              "drug": "組合療法",
              "dose":
                  "**Colistin** (IV+Inhalation) + \n(Meropenem / Tigecycline / Sulbactam / Cefiderocol)",
            },
            {
              "drug": "Tigecycline",
              "dose":
                  "Loading 200mg -> 100mg q12h。\n**血中濃度低，菌血症/UTI 不建議單用** (老虎怕水)",
            },
          ],
        },
        {
          "category": "E. CRE / CRPA (新藥)",
          "items": [
            {
              "drug": "Cefiderocol",
              "dose": "2g q8h (3hr infusion)。覆蓋廣 (CRE, CRAB, CRPA)",
            },
            {
              "drug": "Zavicefta",
              "dose": "Ceftazidime-avibactam。對 KPC/OXA-48 有效 (MBL 無效)",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🦠 感染科",
    "id": "protocol_id_fungal",
    "title": "黴菌感染 (Fungal)",
    "subtitle": "Candida, Aspergillus & Anti-fungal agents",
    "content": {
      "intro":
          "### 治療原則\n1. **Fungemia (念珠菌血症)**: **一定要治**！移除 CVC。需治療至 B/C 陰性後 14 天。檢查眼底 (眼內炎)。\n2. **Urine/Sputum Candida**: 多為 **Colonization**，原則上**不治療** (除非 Neutropenia 或泌尿道處置)。\n3. **Aspergillus (麴菌)**: 常見於免疫低下/移植病人 (肺部空洞)。",
      "diagnosis": [
        "[分類] **Yeast**: Candida, Cryptococcus (腦膜炎/HIV)",
        "[分類] **Mold**: Aspergillus, Mucor",
        "[檢驗] Beta-D-Glucan (廣泛), Galactomannan (Aspergillus)",
      ],
      "treatment": [
        {
          "category": "A. 念珠菌 (Candida)",
          "items": [
            {
              "drug": "Fluconazole",
              "dose": "首選 (低風險)。**UTI 首選** (濃度高)。C. krusei 無效",
            },
            {
              "drug": "Echinocandin",
              "dose": "**Micafungin / Anidulafungin**\n中重度/高風險首選。**UTI 無效**!",
            },
            {"drug": "Amphotericin B", "dose": "後線/抗藥性菌株。腎毒性強"},
          ],
        },
        {
          "category": "B. 麴菌 (Aspergillus)",
          "items": [
            {"drug": "Voriconazole", "dose": "首選治療 (視幻覺副作用)"},
            {"drug": "Posaconazole", "dose": "預防性用藥為主"},
            {"drug": "Isavuconazole", "dose": "副作用較少，可用於腎功能差者"},
          ],
        },
      ],
    },
  },
  {
    "group": "🦠 感染科",
    "id": "protocol_id_viral",
    "title": "病毒感染 (Viral)",
    "subtitle": "COVID-19, Influenza, CMV, C. diff",
    "content": {
      "diagnosis": [
        "[COVID-19] 高風險: 年齡≥65, 慢性病, 免疫低下, 孕婦",
        "[CMV] 驗 **CMV PCR** (Viral load)。常見於移植/免疫抑制病人。",
        "[C. diff] 抗生素後腹瀉。驗 **Stool Toxin**。分輕/重/猛爆性。",
      ],
      "treatment": [
        {
          "category": "A. COVID-19",
          "items": [
            {
              "drug": "Paxlovid (口服)",
              "dose": "首選。發病5天內。需調整腎功能 & 交互作用 (抗凝血劑/Statin)",
            },
            {"drug": "Molnupiravir (口服)", "dose": "無法用 Paxlovid 者。效果較差。孕婦禁用"},
            {
              "drug": "Remdesivir (IV)",
              "dose": "住院/肺炎/無法口服者。200mg -> 100mg QD (共3-5天)",
            },
          ],
        },
        {
          "category": "B. 流感 (Influenza)",
          "items": [
            {"drug": "Tamiflu (口服)", "dose": "75mg BID x 5天"},
            {"drug": "Peramivir (IV)", "dose": "300-600mg 單次注射 (吸收不良/重症)"},
          ],
        },
        {
          "category": "C. 巨細胞病毒 (CMV)",
          "items": [
            {"drug": "Ganciclovir", "dose": "治療首選。注意骨髓抑制 (Cytopenia)"},
            {"drug": "Letermovir", "dose": "預防性為主。較無骨髓毒性"},
          ],
        },
        {
          "category": "D. 困難梭狀桿菌 (C. diff)",
          "items": [
            {
              "drug": "第一線",
              "dose": "**Vancomycin (Oral)** 125mg QID 或 **Fidaxomicin**",
            },
            {"drug": "替代", "dose": "Metronidazole 500mg TID (僅輕症/無藥時)"},
            {
              "drug": "猛爆性 (Fulminant)",
              "dose": "Vanco (Oral/Rectal) + Metronidazole (IV)",
            },
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🍬 內分泌科 (Endocrinology)
  // ====================================================================
  {
    "group": "🍬 內分泌科",
    "id": "chap_endo_01",
    "title": "腦下垂體 (Pituitary)",
    "subtitle": "Apoplexy, Prolactinoma & Acromegaly",
    "content": {
      "diagnosis": [
        "Apoplexy: 突發頭痛, 視野缺損, 低血壓",
        "Prolactinoma: PRL > 100 ng/mL",
        "Acromegaly: IGF-1 高, GH 無法被 OGTT 抑制",
      ],
      "treatment": [
        {
          "category": "腦下垂體中風 (Apoplexy)",
          "items": [
            {
              "drug": "Steroids (First!)",
              "dose": "高劑量 Hydrocortisone (避免 Adrenal Crisis)",
            },
            {"drug": "Surgery", "dose": "緊急減壓 (若有神經缺損)"},
          ],
        },
        {
          "category": "高泌乳激素血症",
          "items": [
            {"drug": "Agonist (首選)", "dose": "Cabergoline 或 Bromocriptine"},
            {"drug": "Surgery", "dose": "藥物無效或壓迫視神經"},
          ],
        },
      ],
    },
  },
  {
    "group": "🍬 內分泌科",
    "id": "chap_endo_02",
    "title": "甲狀腺 (Thyroid)",
    "subtitle": "Storm, Myxedema & Hyper/Hypo",
    "content": {
      "intro":
          "### 甲狀腺風暴 (Thyroid Storm)\n1. **定義**：危及生命的甲狀腺機能亢進惡化。\n2. **診斷 (Burch-Wartofsky Score)**：\n   * **> 45分**：高度懷疑 (Highly suggestive)\n   * **25-44分**：疑似 (Suggestive)\n   * **< 25分**：不太像 (Unlikely)\n   * *評分項目：體溫、CNS症狀、心跳、心衰竭、腸胃道症狀*\n3. **抽血**：Free T4, 3rd-gen TSH (T3 可順便)。\n4. **禁忌**：❌ **退燒不可用 Aspirin** (會增加 Free T4)。",
      "diagnosis": [
        "[Graves'] Diffuse uptake; [Thyroiditis] Low uptake",
        "[Hyper] TSH低, fT4高; [Hypo] TSH高, fT4低",
        "[Storm] 高燒 >38°C, 心跳 >140, 意識改變, 黃疸/腹瀉",
      ],
      "treatment": [
        {
          "category": "A. 甲狀腺風暴 (4大藥物順序)",
          "items": [
            {
              "drug": "1. Beta-blocker (控制症狀)",
              "dose":
                  "**Propranolol** 40-80mg PO q4h (首選, 抑制T4轉T3)\n**Esmolol** IV (若需快速調整): 250-500 mcg/kg loading -> 50-100 mcg/kg/min",
            },
            {
              "drug": "2. Thionamide (抑制合成)",
              "dose":
                  "**PTU** (首選): 500-1000mg loading -> 250mg q4h (抑制T4轉T3)\n**Methimazole**: 20-40mg q4h-q6h (Max 120mg/day)",
            },
            {
              "drug": "3. Iodine (抑制釋放)",
              "dose":
                  "⚠️ **必須在抗甲狀腺藥後 1 小時給予** (Wolff-Chaikoff effect)\n**SSKI**: 5滴 PO q6h\n**Lugol's**: 8滴 PO q6h\n*若碘過敏: Lithium 300mg q6-8h*",
            },
            {
              "drug": "4. Steroid (抑制轉換)",
              "dose":
                  "**Hydrocortisone**: 300mg IV st -> 100mg q8h\n**Dexamethasone**: 2mg IV q12h",
            },
          ],
        },
        {
          "category": "B. 支持性療法",
          "items": [
            {
              "drug": "退燒",
              "dose":
                  "**Acetaminophen** (首選)\n❌ **禁用 Aspirin** (會置換出 Free T4 加重病情)",
            },
            {
              "drug": "輸液與降溫",
              "dose": "積極輸液 (Fluid resuscitation) 與 物理降溫 (冰枕/冷氣)",
            },
          ],
        },
        {
          "category": "C. 黏液水腫性昏迷 (Myxedema)",
          "items": [
            {
              "drug": "Steroids (Must!)",
              "dose":
                  "**Hydrocortisone 100mg IV stat** (先給! 避免 Adrenal Crisis)",
            },
            {"drug": "Thyroxine", "dose": "T4 200-400 mcg IV loading"},
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🏥 一般醫學科 (General Medicine)
  // ====================================================================
  {
    "group": "🏥 一般醫學科",
    "id": "chap_gen_01",
    "title": "酒精戒斷 (Alcohol Withdrawal)",
    "subtitle": "CIWA Protocol & DTs",
    "content": {
      "diagnosis": [
        "CIWA-Ar 量表評估",
        "Delirium Tremens (DTs): 震顫, 視幻覺, 自律神經失調 (48-96hr)",
      ],
      "treatment": [
        {
          "category": "Benzodiazepines (主要治療)",
          "items": [
            {
              "drug": "Symptom-Triggered",
              "dose": "CIWA >8 給 Lorazepam 2-4mg (首選)",
            },
            {
              "drug": "Fixed-Schedule",
              "dose": "Chlordiazepoxide 或 Lorazepam 定時給予 (重症者)",
            },
          ],
        },
        {
          "category": "其他支持",
          "items": [
            {
              "drug": "Thiamine (B1)",
              "dose": "100-500mg IV/IM (預防 Wernicke's)",
            },
            {"drug": "Electrolytes", "dose": "補充鉀、鎂、磷"},
          ],
        },
      ],
    },
  },
  {
    "group": "🏥 一般醫學科",
    "id": "protocol_pain_01",
    "title": "疼痛控制 (Pain & Opioids)",
    "subtitle": "On Call: Morphine, Fentanyl & Rescue",
    "content": {
      "intro":
          "### 處置原則\n1. **強度換算**：PO : SC : IV = 1 : 2 : 3。\n2. **初次使用**：非末期/Naive 病人盡量別亂開。術後常見: Morphine 5mg in 100mL NS run 15min Q6H prn。\n3. **調整原則**：不要病人一喊痛就調高。每日增加總量以不超過前 24hr 的 1/3 為原則。\n4. **救援劑量 (Rescue)**：一次 prn = 每日總量的 10-20% (或 1/6)。",
      "diagnosis": [
        "[解毒] **RR < 8** 或 **Pinpoint pupil**: 懷疑中毒 -> Naloxone",
        "[警示] **Fentanyl 貼片**: Onset 慢 (6-12hr)，不適合急性止痛。一片 = 60mg PO Morphine。",
        "[警示] **長效口服 (MST)**: 不可磨粉/剝半 (吞嚥困難禁用)。",
        "[換算] 口服 Morphine 2 mg = 皮下 Morphine 1 mg。",
      ],
      "treatment": [
        {
          "category": "A. 口服藥物 (Oral Opioids)",
          "items": [
            {
              "drug": "Morphine Sulfate (短效)",
              "dose": "5-15 mg PO q4h (老人/肝腎差 q6h)\n*30min生效, 1hr達峰值*",
            },
            {
              "drug": "MST Continus (長效)",
              "dose": "30mg q12h 起始。\n**不可磨粉/咬碎**。每 2-3 天調一次 (幅度 30-50%)",
            },
            {"drug": "MXL (長效膠囊)", "dose": "q12h 或 QD。**可撥開**加在水/飲料服用 (NG可用)"},
            {
              "drug": "Oxycodone",
              "dose":
                  "強度約 Morphine 的 **1.5倍**\nOxyNorm (短效), Oxycontin (長效 q12h)",
            },
          ],
        },
        {
          "category": "B. 針劑與調整 (IV/SC)",
          "items": [
            {
              "drug": "Naive Patient",
              "dose": "**Morphine 2-5 mg IV/SC q4-6h prn**\nIV peak: 5-15min",
            },
            {
              "drug": "劑量調整 (Titration)",
              "dose":
                  "5 -> 10 -> 15 -> 20 -> 30 -> 45 -> 60 mg\n*若 prn 需求 >=3 次/日，建議調整基底劑量*",
            },
          ],
        },
        {
          "category": "C. Fentanyl (Patch & Pump)",
          "items": [
            {
              "drug": "Transdermal Patch",
              "dose": "3天換一次 (少數2天)。若多片建議交錯時間換。\n*初次使用需 12-24hr 達穩態*",
            },
            {
              "drug": "ICU Pump (原液)",
              "dose":
                  "Fentanyl (500mcg/10mL) 1 amp **Run 1-3 ml/hr**\n調整: ± 5cc/hr (Max 20cc/hr)",
            },
            {
              "drug": "ICU Pump (稀釋)",
              "dose": "Fentanyl 1 amp in 100mL NS -> **Run 10-20 ml/hr**",
            },
          ],
        },
        {
          "category": "D. 呼吸困難與拔管 (Dyspnea)",
          "items": [
            {
              "drug": "呼吸喘 (Dyspnea)",
              "dose":
                  "Morphine 5-15mg PO 或 2-5mg IV/SC prn\n嚴重: 加 Midazolam 0.5-1 mg",
            },
            {
              "drug": "撤除呼吸器 (Terminal)",
              "dose":
                  "Morphine 5-10mg + Midazolam 5-10mg SC (拔管前)\n考慮 Syringe pump 持續輸注 (各 10-20mg/day)",
            },
          ],
        },
        {
          "category": "E. 解毒劑 (Antidote)",
          "items": [
            {
              "drug": "Naloxone",
              "dose":
                  "**0.4-2 mg (1-5支) IV/SC** 每 3min 可重複\n直到 RR > 8/min。若給 10mg 無效應重新診斷",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🏥 一般醫學科",
    "id": "protocol_transfusion_01",
    "title": "輸血指引 (Transfusion)",
    "subtitle": "On Call: 血品選擇、劑量計算 & 輸血反應",
    "content": {
      "intro":
          "### 輸血原則\n1. **Hb 目標**：原則上 < 7.0 才輸 (Active bleeding 除外)。\n2. **照射 (Irradiation)**：預防 GVHD (適應症: 免疫不全/化療/移植)。\n3. **MTP (大量輸血)**：創傷/大出血時啟動 (比例 1:1:1)。",
      "diagnosis": [
        "[RBC] **Hb < 7.0** 或 Active bleeding。Check Reticulocyte, Ferritin, OB。",
        "[PLT] **< 20k** (預防), **< 50k** (出血/手術), **< 100k** (腦/眼手術)。",
        "[FFP] **PT/APTT > 1.5x** 且有出血風險。",
        "[Cryo] **Fibrinogen < 100** (DIC 常見)。",
        "[鑑別] **PLT 輸不上去?** 驗 CCI (1hr < 7.5 = Refractory)。考慮 HLA-matched。",
        "[反應] **TACO** (水腫/高血壓) vs **TRALI** (ARDS/發燒/低血壓)。",
      ],
      "treatment": [
        {
          "category": "A. 紅血球 (LPR/pRBC)",
          "items": [
            {
              "drug": "劑量",
              "dose":
                  "**2 U 上升 Hb 1.0** (每 U 250mL)。\n*建議每次 2U 慢慢給，避免 Volume overload*",
            },
            {
              "drug": "MTP (大量輸血)",
              "dose": "第1輪: 6U RBC + 1U LPPH + 2U FFP\n第2輪: 6U RBC + 10U FFP",
            },
          ],
        },
        {
          "category": "B. 血小板 (Platelet)",
          "items": [
            {
              "drug": "LPPH (分離術)",
              "dose": "**首選**。1 袋 (約200mL) = 12U 濃縮血小板\n**預期上升 30k**",
            },
            {"drug": "PLT Concentrate", "dose": "12 U 上升 30k (每 U 30-40mL)"},
            {
              "drug": "CCI 公式",
              "dose": "(輸後-輸前) x BSA / 輸注量(10^11)\n*LPPH 含 3x10^11*",
            },
            {
              "drug": "鑑別 (Refractory)",
              "dose": "ITP, DIC, TTP (禁輸血!), Splenomegaly",
            },
          ],
        },
        {
          "category": "C. 凝血因子 (FFP & Cryo)",
          "items": [
            {
              "drug": "FFP (血漿)",
              "dose": "**10-15 mL/kg** (成人約 4-6 U)\n*每 mL 上升 1% 因子濃度*",
            },
            {
              "drug": "Cryoprecipitate",
              "dose":
                  "**Fibrinogen < 100** 時使用 (DIC)\n成人約 **10-12 U** (20U 上升 Fibrinogen 75)",
            },
          ],
        },
        {
          "category": "D. 輸血反應處置",
          "items": [
            {"drug": "TACO (體液過多)", "dose": "坐起, O2, **Lasix** (利尿劑), 減慢輸血"},
            {
              "drug": "TRALI (肺損傷)",
              "dose": "支持性療法 (ARDS protocol), 插管/氧氣\n*勿給利尿劑 (除非合併過量)*",
            },
            {
              "drug": "過敏 (Allergy)",
              "dose": "停輸血, 給 **Benadryl** (抗組織胺) ± Steroid",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🏥 一般醫學科",
    "id": "protocol_common_meds",
    "title": "值班常用藥物速查",
    "subtitle": "症狀治療、皮膚藥膏、泌尿處置 & 類固醇分級",
    "content": {
      "intro":
          "### 使用說明\n本章節彙整值班常見的主訴症狀處理 (Symptomatic treatment)，包含針劑、口服與外用藥物。藥名以**亞東醫院**常見品項為主。\n\n**膀胱掃描 (Bladder Scan) 公式**：\n\$\$ \\\\text{Volume} = \\\\text{Width} \\\\times \\\\text{Depth} \\\\times \\\\text{Height} \\\\times 0.7 \$\$",
      "diagnosis": [
        "[警示] **Novamin**: 建議 IM，IV push 易有 EPS 副作用。",
        "[警示] **Imodium**: 細菌性腹瀉或一天拉 <5 次者**禁用** (改用 Smecta)。",
        "[警示] **Dulcolax**: 剛做完腸吻合術者**禁用** (除非主治醫師同意)。",
        "[技巧] **皮膚藥膏**: 不知道開什麼? 開 **Scheree (四益)** (類固醇+抗黴菌+抗生素)。",
        "[技巧] **抗組織胺**: 不知道開什麼? 開 **Benamine** (Vena 口服版)。",
        "[保肝] **Silymarin**: 實證弱 (需15# TID)，主要當**安慰劑**用 (防止病人亂吃偏方)。",
      ],
      "treatment": [
        {
          "category": "A. 針劑急用 (Injectables)",
          "items": [
            {
              "drug": "抗過敏/蕁麻疹",
              "dose":
                  "1. **Vena** (Diphenhydramine) 1 amp IV/IM\n2. 無效 -> **Prednisolone** 5mg PO\n3. 無效 -> **Solu-Medrol** 40mg IV -> 會診皮膚科",
            },
            {
              "drug": "止吐 (Antiemetic)",
              "dose":
                  "**Primperan** (Metoclopramide) 1 amp IV/IM\n**Novamin** 1 amp **IM** (IV 副作用多)\n**Kytril** (自費, 化療用)",
            },
            {
              "drug": "強力利尿 (Diuretics)",
              "dose":
                  "**Lasix**: 1 amp IV push\n**Burinex**: 1 amp = 4 amp Lasix (強效!)\n*用於嚴重水腫且 Lasix 無效時，可泡 pump 1-4 cc/hr*",
            },
          ],
        },
        {
          "category": "B. 常見口服藥 (Oral Meds)",
          "items": [
            {
              "drug": "腸胃道 (GI)",
              "dose":
                  "**MgO**: 1# QID (胃藥), 2# BID (軟便)\n**Sennoside**: 軟便劑\n**Dulcolax**: 強力瀉藥\n**Smecta**: 止瀉 (吸附劑)\n**Erythromycin**: 1-2# TID (Off-label 促進胃排空/胃輕癱)",
            },
            {
              "drug": "感冒/呼吸道",
              "dose":
                  "**Medicon-A**: 止咳\n**Actein / Kotan**: 化痰 (Kotan 可開吸入)\n**Benamine**: 抗組織胺 (鼻水/癢/暈)",
            },
            {
              "drug": "止暈 (Vertigo)",
              "dose": "**Betaserc** (梅尼爾氏症), **Bonamin**",
            },
            {
              "drug": "其他",
              "dose":
                  "**Lipitor**: 降血脂\n**Zoloft / Lexapro**: 老人憂鬱\n**Pentoxifylline**: 末梢循環",
            },
          ],
        },
        {
          "category": "C. 皮膚與外用 (Topical)",
          "items": [
            {
              "drug": "綜合/萬用",
              "dose":
                  "**Scheree (四益乳膏)**: 含 Steroid/Anti-fungal/Antibiotics。濕疹/紅腫/黴菌皆可試。",
            },
            {
              "drug": "止癢/止痛",
              "dose":
                  "**Diclofenac Gel**: 止癢/止痛\n**Teiria Gel**: 肌肉痠痛\n**Flur Di Fen Patch**: 痠痛貼布\n**Heparinoid**: 瘀青藥膏",
            },
            {
              "drug": "特定部位",
              "dose":
                  "**Smile Orabase**: 口內膏\n**High-Xylmol**: 痔瘡/會陰疼痛\n**Artelac**: 人工淚液",
            },
          ],
        },
        {
          "category": "D. 泌尿與滯留 (Urology)",
          "items": [
            {
              "drug": "尿滯留 (Retention)",
              "dose": "餘尿 > 400ml -> 單導或 Foley\n藥物: **Bethanechol** (促進收縮)",
            },
            {
              "drug": "攝護腺肥大 (BPH)",
              "dose": "**Harnalidge** (不可磨粉)\n**Urief** (可磨粉)",
            },
          ],
        },
        {
          "category": "E. 類固醇藥膏強弱表 (Steroid Potency)",
          "items": [
            {
              "drug": "超強效 (Super Potent)",
              "dose": "**Clobetasol**\n商品名: **Dermovate (戴摩膚)**, Vimax (泡沫液)",
            },
            {
              "drug": "強效 (Potent)",
              "dose": "**Fluocinonide**\n商品名: **Topsym (妥膚淨)**",
            },
            {
              "drug": "中效 (Mid-strength)",
              "dose":
                  "**Betamethasone / Mometasone**\n商品名: **Septon (舒膚通)**, **Rinderon-VA (臨得隆)**, **Elison (安膚樂)**",
            },
            {
              "drug": "中弱效",
              "dose":
                  "**Fluticasone**\n商品名: **Cutivate (克廷膚)**, **Scheree (四益)**",
            },
            {
              "drug": "弱效 (Mild)",
              "dose": "**Hydrocortisone**\n商品名: **Cort. S (皮質醇)** -> 臉部/嬰兒可用",
            },
          ],
        },
      ],
    },
  },
  {
    "group": "🏥 一般醫學科",
    "id": "protocol_lines_tubes",
    "title": "管路照護 (Lines & Tubes)",
    "subtitle": "CVC, Chest Tube, Foley & Drains",
    "content": {
      "intro":
          "### 核心原則\n1. **CVC 阻塞**: **禁忌用力沖洗 (Do NOT flush)**，避免血栓入肺。嘗試回抽。\n2. **胸管冒泡**: 持續冒泡=漏氣。**禁忌隨意夾管** (恐致張力性氣胸)。\n3. **CRBSI 判讀**: 懷疑感染時抽 **成對血比 (Paired BC)**。若管路比周邊早 2hr 長菌 -> 拔管。\n4. **SB Tube**: 食道靜脈曲張大出血救命用。每 4-6hr 需放氣減壓。",
      "diagnosis": [
        "[CVC] **出血**: 加壓 20min。無效可用 Bosmin (Epi) 濕敷。頸部血腫需防呼吸道壓迫。",
        "[氣胸] **Tension**: 低血壓+頸靜脈怒張 -> **立即針刺減壓**。\n*量化: Apex > 3cm 或 Hilum > 2cm 建議放管*",
        "[Foley] **餘尿**: Scan > 400ml 建議導尿。\n*血尿阻塞: 改用 3-way Foley 沖洗*",
        "[Drain] **JP異常**: 乳白(乳糜), 糞色(腸漏), 綠色(膽汁), 鮮紅(出血)。",
      ],
      "treatment": [
        {
          "category": "A. 中心靜脈導管 (CVC/Port-A)",
          "items": [
            {
              "drug": "阻塞處理",
              "dose": "1. 檢查扭結\n2. 嘗試 **回抽 (Aspirate)**\n3. ❌ **禁止用力沖洗**",
            },
            {
              "drug": "感染拔除",
              "dose":
                  "若長 **Fungus (念珠菌)** -> 強烈建議拔除\n拔除後剪下 Tip 送 Aerobic culture",
            },
          ],
        },
        {
          "category": "B. 胸管 (Chest Tube)",
          "items": [
            {
              "drug": "大量出血",
              "dose": "> 500ml/8hr 或 > 50ml/hr 持續增加 -> 通知外科 (可能需手術)",
            },
            {"drug": "皮下氣腫", "dose": "檢查側孔是否滑出。若滑出 **不可推回**，需更換。"},
          ],
        },
        {
          "category": "C. 鼻胃管 & SB Tube",
          "items": [
            {
              "drug": "UGI Bleeding",
              "dose": "放置 NG 做 **Free drainage** (監測出血量/減壓)",
            },
            {
              "drug": "SB Tube (食道球)",
              "dose": "胃球: 250cc 空氣 (拉緊)\n食道球: 30-50 mmHg (每 4-6hr 放氣 15min)",
            },
          ],
        },
        {
          "category": "D. 外科引流管 (JP)",
          "items": [
            {
              "drug": "移除標準 (參考)",
              "dose": "腹腔: < 100ml/day\n軟組織: < 30ml/day\n*腸胃道手術需等排氣/排便*",
            },
          ],
        },
      ],
    },
  },
  // ====================================================================
  // Group: 🧠 神經內科 (Neurology)
  // ====================================================================
  {
    "group": "🧠 神經內科",
    "id": "neuro_stroke_comparison",
    "title": "2026 vs 舊版處置差異對照",
    "subtitle": "藥物、血壓、血糖與取栓標準變革",
    "content": {
      "intro":
          "### 核心警示 (Critical Changes)\n1. **血壓禁忌**: 血管打通後 72 小時內，**絕對不可**將收縮壓降至 < 140 mmHg (Class 3: Harmful)。\n2. **藥物換代**: Tenecteplase (TNK) 正式上位，施打僅需 5 秒，優於 Alteplase (1 小時)。\n3. **輕症不溶栓**: NIHSS ≤ 5 且無失能者，改用 DAPT。",
      "diagnosis": [
        "**大核心梗塞 (Large Core)**:\n* 舊觀念: ASPECTS < 6 分 (大片黑) -> 放棄取栓。\n* **新指引**: ASPECTS 3-5 分 -> **仍建議取栓** (Level 1A/2B)。",
        "**基底動脈阻塞 (Basilar Artery)**:\n* 舊觀念: 證據不明確。\n* **新指引**: 強烈建議取栓 (Class 1)。",
      ],
      "treatment": [
        {
          "category": "藥物與血糖 (Med & Sugar)",
          "items": [
            {
              "drug": "溶栓藥物 (IVT)",
              "dose":
                  "舊: Alteplase Only\n新: **Tenecteplase (TNK)** 或 Alteplase",
            },
            {
              "drug": "血糖目標 (Sugar)",
              "dose": "舊: 80 - 130 mg/dL (嚴格)\n新: **140 - 180 mg/dL** (寬鬆)",
            },
          ],
        },
        {
          "category": "血壓控制 (BP Control)",
          "items": [
            {
              "drug": "IVT/EVT 治療後",
              "dose": "舊: < 180/105 (部分指引建議 <140)\n新: **< 180/105** (嚴禁 < 140)",
            },
            {
              "drug": "原因",
              "dose": "積極降壓會降低腦灌流壓 (CPP)，導致缺血半影區 (Penumbra) 壞死擴大。",
            },
          ],
        },
        {
          "category": "輕微中風 (Minor Stroke)",
          "items": [
            {
              "drug": "NIHSS ≤ 5 (非失能)",
              "dose": "舊: 考慮 IVT ?\n新: **不建議 IVT**，應給予 DAPT (Asp+Plavix)",
            },
            {"drug": "NIHSS ≤ 5 (失能)", "dose": "新: 仍建議 IVT (如失語、手癱瘓影響生活)"},
          ],
        },
      ],
    },
  },

  // ====================================================================
  // Batch 1: 神經與精神 (來源：PGY臨床工作入門指南 2022)
  // ====================================================================

  {
    "group": "🧠 神經與精神",
    "id": "protocol_mental_status",
    "lastUpdate": "2022/01/01",
    "title": "意識改變 (Altered Mental Status)",
    "subtitle": "PGY: AEIOU腦心肺肝腎鑑別與處置流程",
    "content": {
      "intro":
          "### 處置原則\n1. **首要任務**：確認血糖 + 生命徵象。\n2. **到 bedside 評估病人在電話中是關鍵。**\n3. **記憶口訣：AEIOU 腦心肺肝腎**\n   * A: Alcohol（酒精）、Anemia\n   * E: Electrolyte（電解質）、Endocrine（內分泌）\n   * I: Insulin（血糖）、Infection（感染）\n   * O: Overdose（藥物過量）\n   * U: Uremia（尿毒）\n4. **特別留意**：藥物中毒、顱內出血/感染、腦壓↑、敗血症、器官衰竭、休克。",
      "diagnosis": [
        "[危急] GCS ≤ 8：考慮插管保護呼吸道",
        "[危急] 顱內壓上升 Cushing triad：血壓↑、心率↓、呼吸↓/不規則",
        "[危急] 意識不清 + 喘：懷疑缺氧或 CO2 滯留",
        "[快速致死] 藥物中毒、顱內出血/感染、腦壓↑、敗血症",
        "[酒精戒斷] 需留意震顫性譫妄 (Delirium tremens)",
        "[檢驗] CBC/DC, Na/K/Ca/Mg, BUN/Cr, ABG, LFT, ammonia, TSH, cortisol",
        "[影像] 頭部 CT ± CTA；懷疑顱內感染做腰椎穿刺",
      ],
      "treatment": [
        {
          "category": "A. 初步穩定",
          "items": [
            {"drug": "血糖 < 70", "dose": "D50W 40mL IV push"},
            {"drug": "O2", "dose": "維持 SpO2 ≥ 92%（COPD 88-92%）"},
            {"drug": "GCS ≤ 8", "dose": "考慮插管"},
            {"drug": "BZD 戒斷/譫妄", "dose": "Lorazepam 2-4mg IVP 或 Diazepam 5-10mg IVP"},
          ],
        },
        {
          "category": "B. 藥物過量解毒",
          "items": [
            {"drug": "Flumazenil (BZD)", "dose": "0.2mg IVP max 1mg（藥效短，警惕癲癇）"},
            {"drug": "Naloxone (鴉片)", "dose": "0.05-0.2mg IV q3-5min max 5-10mg"},
          ],
        },
        {
          "category": "C. 酒精戒斷治療",
          "items": [
            {"drug": "Lorazepam (Ativan)", "dose": "2-4mg IVP q15-20min 直到適度鎮靜"},
            {"drug": "Thiamine (Vit B1)", "dose": "100mg IVD BID（先給再給糖水）"},
            {"drug": "避免 β-blocker", "dose": "會掩蓋戒斷症狀"},
          ],
        },
        {
          "category": "D. 顱內壓上升",
          "items": [
            {"drug": "床頭搖高 30°", "dose": "減少腦靜脈回流"},
            {"drug": "Mannitol 20%", "dose": "1g/kg IVD STAT → 0.5g/kg Q6-8H"},
            {"drug": "Furosemide", "dose": "0.5-1mg/kg IVP（與 mannitol 協同）"},
            {"drug": "積極退燒", "dose": "Acetaminophen + 物理降溫"},
          ],
        },
        {
          "category": "E. 肝腦病變",
          "items": [
            {"drug": "Lactulose", "dose": "30-45mL TID 目標 2-3 次軟便/日"},
            {"drug": "營養", "dose": "35-40 kcal/kg/day，蛋白 0.8-1.2 g/kg/day"},
          ],
        },
      ],
    },
  },

  {
    "group": "🧠 神經與精神",
    "id": "protocol_agitation",
    "lastUpdate": "2022/01/01",
    "title": "躁動、攻擊性 (Agitation)",
    "subtitle": "PGY: 譫妄處理與酒精戒斷",
    "content": {
      "intro":
          "### 處置原則\n1. **醫師的職責是評估疾病因素，而非壓制病人。**\n2. **先確認血糖 + 生命徵象，再找原因。**\n3. **躁動可能是嚴重病症（敗血症/休克）的唯一表現。**\n4. **譫妄治療核心：處理潛在成因 + 環境處置。**",
      "diagnosis": [
        "[根本] 譫妄可能源於：脫水、電解質異常、感染、低血糖、肝/腎/呼吸衰竭、酒精/鎮靜藥物戒斷、鎮靜劑",
        "[酒精戒斷] 6-48hr 發生：焦慮、顫抖、心搏過速、盜汗",
        "[震顫性譫妄] 2-4 天發生：躁動、定向力喪失、幻覺、HR↑、BP↑、發燒",
        "[GCS ≤ 8] 考慮插管保護呼吸道",
      ],
      "treatment": [
        {
          "category": "A. 抗精神病藥（譫妄一線）",
          "items": [
            {"drug": "Haloperidol (Haldol)", "dose": "0.5-1mg IM/PO q30min max 5mg/day"},
            {"drug": "EPS 處理", "dose": "Diphenhydramine 30-50mg IV STAT"},
          ],
        },
        {
          "category": "B. BZD（僅用於 BZD/酒精戒斷）",
          "items": [
            {"drug": "Lorazepam (Ativan)", "dose": "0.5-1mg PO/IM/IV q30min max 2mg"},
          ],
        },
        {
          "category": "C. 酒精戒斷",
          "items": [
            {"drug": "Lorazepam", "dose": "2-4mg IVP q15-20min 直到適度鎮靜"},
            {"drug": "Thiamine", "dose": "100mg IVD BID（先給再給糖水）"},
            {"drug": "避免 β-blocker", "dose": "會掩蓋戒斷症狀"},
          ],
        },
        {
          "category": "D. 非藥物處理",
          "items": [
            {"drug": "增加定向感", "dose": "時鐘、窗戶、親友探訪"},
            {"drug": "肢體約束", "dose": "必要時暫時使用，先知會家屬"},
          ],
        },
      ],
    },
  },

  {
    "group": "🧠 神經與精神",
    "id": "protocol_seizure",
    "lastUpdate": "2022/01/01",
    "title": "癲癇 (Seizures)",
    "subtitle": "PGY: 癲癇持續狀態處理與後續預防",
    "content": {
      "intro":
          "### 處置原則\n1. **癲癇發作 ≥ 5min 給 BZD 藥物治療。**\n2. **癲癇重積症 (Status epilepticus)：連續發作或發作間意識未恢復。**\n3. **千萬不要塞東西到嘴巴裡。**\n4. **BZD 會呼吸抑制 → 密切監測、備 ambu bag。**",
      "diagnosis": [
        "[超過 5 分鐘] 考慮給予 BZD 藥物",
        "[癲癇重積症] 發作 ≥ 5min 或連續兩次發作意識未恢復 → 緊急處理",
        "[Postictal state] 發作後意識混亂、肢體無力 (Todd paralysis) 可持續數小時",
        "[非痙攣型] 意識時好時壞交替、面部/肢體局部抽動",
        "[驗血糖] < 70 mg/dL → D50W 40mL IV",
        "[CK > 1000] 可能有橫紋肌溶解，積極輸液避免腎衰竭",
      ],
      "treatment": [
        {
          "category": "A. BZD 一線（癲癇 ≥ 5 分鐘）",
          "items": [
            {"drug": "Lorazepam (Ativan)", "dose": "0.1mg/kg max 4-10mg IVP（首選）"},
            {"drug": "Diazepam (Valium)", "dose": "0.2mg/kg max 10mg IVP"},
            {"drug": "Midazolam (Dormicum)", "dose": "0.2mg/kg max 10mg IM（無 IV 時）"},
          ],
        },
        {
          "category": "B. 二線抗癲癇藥（BZD 無效時）",
          "items": [
            {"drug": "Levetiracetam (Keppra)", "dose": "20-40mg/kg max 4.5g IVD → 1000mg Q12H（首選）"},
            {"drug": "Valproate (Depakine)", "dose": "20-40mg/kg max 3g IVD → 400mg Q8H"},
            {"drug": "Phenytoin (Dilantin)", "dose": "20mg/kg max 1.5g IVD（監測血壓/心律）"},
          ],
        },
        {
          "category": "C. 難治型癲癇重積症 (RSE)",
          "items": [
            {"drug": "Propofol", "dose": "1-2mg/kg IVP → 2-10mg/kg/hr IVD（注意 propofol infusion syndrome）"},
            {"drug": "Midazolam", "dose": "0.2mg/kg IVP → 0.1-2mg/kg/hr IVD"},
            {"drug": "Phenobarbital (Luminal)", "dose": "5-15mg/kg IVD → 1-5mg/kg/hr IVD"},
          ],
        },
        {
          "category": "D. 預防復發",
          "items": [
            {"drug": "適應症", "dose": "癲癇 ≥ 2次、EEG 異常、顱內病灶、Todd paralysis"},
            {"drug": "Levetiracetam", "dose": "20-40mg/kg max 4.5g IVD → 1000mg Q12H"},
          ],
        },
      ],
    },
  },

  {
    "group": "🧠 神經與精神",
    "id": "protocol_headache",
    "lastUpdate": "2022/01/01",
    "title": "頭痛 (Headache)",
    "subtitle": "PGY: 危險徵候 SNOOP 與顱內壓處置",
    "content": {
      "intro":
          "### 處置原則\n1. **突然劇烈頭痛、意識改變、嘔吐 → 儘快到 bedside。**\n2. **危險徵候 SNOOP：Systemic/Neurologic/Onset猝發/Old ≥50/Pattern 變化。**\n3. **顱內壓上升：頭痛、嘔吐、意識↓、視乳突水腫、Cushing triad。**",
      "diagnosis": [
        "[危急] 顱內壓上升：頭痛(躺下加劇)、嘔吐、視乳突水腫、Cushing triad",
        "[危急] 腦疝：單側 CN III 缺損、瞳孔失去光反射、偏癱 → 緊急處理",
        "[危險徵候 SNOOP] Systemic/Neurologic/猝發/Old≥50/Pattern 變化",
        "[發燒+頸僵] 考慮腦膜炎 → 腰椎穿刺確診",
        "[猝發性劇烈頭痛] 考慮蛛網膜下出血 → CT + 腰椎穿刺",
        "[偏癱型偏頭痛禁用] Sumatriptan、麥角鹼",
      ],
      "treatment": [
        {
          "category": "A. 顱內壓上升",
          "items": [
            {"drug": "床頭搖高 30°", "dose": "減少腦靜脈回流"},
            {"drug": "Mannitol 20%", "dose": "1g/kg IVD STAT → 0.5g/kg Q6-8H"},
            {"drug": "Furosemide", "dose": "0.5-1mg/kg IVP（與 mannitol 協同）"},
            {"drug": "積極退燒", "dose": "Acetaminophen + 物理降溫"},
          ],
        },
        {
          "category": "B. 腦膜炎",
          "items": [
            {"drug": "經驗性抗生素", "dose": "Ceftriaxone + Vancomycin（免疫低下加 Ampicillin）"},
            {"drug": "Dexamethasone", "dose": "10mg IVP Q6H × 4 天（第一劑抗生素前給）"},
          ],
        },
        {
          "category": "C. 偏頭痛",
          "items": [
            {"drug": "Sumatriptan (Imigran)", "dose": "50-100mg PO，2hr 後可再給一次"},
            {"drug": "禁忌", "dose": "偏癱型/腦幹型偏頭痛、缺血性中風、冠心病、未控制高血壓"},
          ],
        },
        {
          "category": "D. 叢集性頭痛",
          "items": [
            {"drug": "O2（一線）", "dose": "NRM 12-15L/min × 15min"},
            {"drug": "Sumatriptan", "dose": "50-100mg PO"},
          ],
        },
      ],
    },
  },

  {
    "group": "🧠 神經與精神",
    "id": "protocol_dizziness",
    "lastUpdate": "2022/01/01",
    "title": "頭暈、昏厥 (Dizziness/Syncope)",
    "subtitle": "PGY: 眩暈 vs 昏厥鑑別與緊急處置",
    "content": {
      "intro":
          "### 處置原則\n1. **眩暈 (Vertigo)：天旋地轉，意識正常 → 顱內或內耳病灶。**\n2. **昏厥 (Syncope)：眼前發黑、意識喪失 → 短暫腦灌流不足。**\n3. **眩暈常見病因：BPPV、Meniere's、前庭神經炎。**\n4. **昏厥常見病因：心律不整、姿態性低血壓、血管迷走反射。**",
      "diagnosis": [
        "[眩暈] 天旋地轉 + 意識正常 → 周邊（良性）或中樞（腦幹中風）",
        "[昏厥] 眼前發黑、意識喪失 → 心臟（心律不整/瓣膜）或神經性（迷走/姿態性）",
        "[眩暈+單側耳鳴] Meniere's disease",
        "[眩暈+姿勢變化] BPPV（Epley 法復位）",
        "[昏厥+心悸/胸悶] 心臟因素 → ECG 緊急",
        "[姿態性低血壓] 站立 3min 後 SBP 降 >20 或 DBP 降 >10",
        "[心律不整] ECG 緊急評估",
      ],
      "treatment": [
        {
          "category": "A. 眩暈治療",
          "items": [
            {"drug": "Meclizine (Bonine)", "dose": "25mg PO（抗組織胺，首選）"},
            {"drug": "Betahistine (Betaserc)", "dose": "24mg PO"},
            {"drug": "Diazepam", "dose": "2mg PO/IV（BZD，眩暈嚴重時）"},
            {"drug": "中樞性眩暈", "dose": "需懷疑中風 → CT 評估 → 聯絡後線"},
          ],
        },
        {
          "category": "B. 昏厥治療",
          "items": [
            {"drug": "迷走神經反射", "dose": "平躺 + 下肢抬高，通常自行恢復"},
            {"drug": "姿態性低血壓", "dose": "增加水分攝取、站立前先坐 5 分鐘"},
            {"drug": "心因性昏厥", "dose": "ECG 監測 → 心臟科會診"},
          ],
        },
      ],
    },
  },

  // ====================================================================
  // Batch 2: 胸腔與感染 (來源：PGY臨床工作入門指南 2022 + 值班疑難雜症 2025)
  // ====================================================================

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_dyspnea",
    "lastUpdate": "2025/10/15",
    "title": "呼吸困難與低血氧 (Dyspnea/Desaturation)",
    "subtitle": "FEMH R4: 值班step-by-step處理流程",
    "content": {
      "intro":
          "### 常見病因（值班常見）\n1. **胸腔**：Pneumonia, aspiration, COPD/Asthma AE, pleural effusion, lung edema, PE\n2. **心臟**：急性心衰竭、瓣膜疾病、AMI\n3. **腸胃道**：Upper GI bleeding\n4. **其他**：嚴重貧血、敗血症、DKA/HHS\n5. **最後**：精神因素\n\n### 錯誤 vs 正確示範\n❌ 一直上調氧氣，卻沒有做 survey\n❌ 病人血氧差，卻只抽 VBG 而不是 ABG\n✅ 快速查閱病歷、追蹤抽血及胸部 X 光\n✅ 務必到 bedside 評估病人呼吸、意識及血氧！",
      "diagnosis": [
        "[喘+胸悶+胸痛] → AMI?\n[躺著更喘+肺部濕囉音+心衰竭/洗腎病史] → Lung edema?\n[呼吸時會痛+單側呼吸音減弱+鼓音] → Pneumothorax?\n[發燒+TOCC+痰多+肺部囉音] → Pneumonia/Aspiration?\n[明顯Wheezing+COPD/Asthma病史+CO2 retention] → COPD/Asthma AE?",
        "[初始評估] Stat CXR + VBG/ABG + CBC, DC, Na/K/BUN/Cr/AST/ALT + Lactate",
      ],
      "treatment": [
        {
          "category": "A. Pneumothorax",
          "items": [
            {"drug": "評估", "dose": "Stat CXR + VBG/ABG + Chest echo（看到 barcode sign）"},
            {"drug": "穩定病人", "dose": "Simple mask 8-10L，次日追蹤 CXR"},
            {"drug": "不穩定+大片氣胸", "dose": "立即 Call 二線 → 細針減壓 + Pigtail/Chest tube"},
          ],
        },
        {
          "category": "B. Lung Edema",
          "items": [
            {"drug": "評估", "dose": "Stat CXR + VBG/ABG + NT-proBNP"},
            {"drug": "Lasix", "dose": "1-2 amp Q8-12H IV push（根據年紀、血壓、體重）"},
            {"drug": "限水", "dose": "Diet 限水 1000-1300 cc/day"},
            {"drug": "NTG pump + BiPAP", "dose": "建議跟二線討論後使用"},
          ],
        },
        {
          "category": "C. COPD/Asthma AE",
          "items": [
            {"drug": "Ipratropium + Terbutaline", "dose": "各 1 amp Q6H INHL"},
            {"drug": "Methylprednisolone", "dose": "20-40mg Q8-12H IV（根據年紀及體重）"},
            {"drug": "BiPAP", "dose": "建議跟二線討論後使用"},
            {"drug": "抗生素", "dose": "WBC 高或有 septic signs 時才加"},
          ],
        },
        {
          "category": "D. Pneumonia/Aspiration",
          "items": [
            {"drug": "評估", "dose": "Stat CXR + VBG/ABG + Lactate + 近期培養結果"},
            {"drug": "培養", "dose": "Influenza/COVID-19 + Urine Legionella/Pneumococcus Ag + Mycoplasma/Chlamydia"},
            {"drug": "呼吸衰竭", "dose": "SpO2 拉不起來、意識改變 → Call 二線評估 BiPAP/HFNC/Intubation"},
          ],
        },
      ],
    },
  },

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_pneumonia",
    "lastUpdate": "2025/10/15",
    "title": "肺炎 (Pneumonia)",
    "subtitle": "FEMH R4: 住院病人肺炎處理與抗生素選擇",
    "content": {
      "intro":
          "### 評估要點\n1. **住院病人 vs 社區感染**：致病菌不同，抗生素策略不同。\n2. **三天以上未改善**：考慮重新留培養。\n3. **呼吸衰竭**：血氧很差、意識改變 → Call 二線評估插管。",
      "diagnosis": [
        "[典型症狀] 發燒、咳嗽、痰多、胸痛、呼吸困難",
        "[Classic pathogens] S. pneumoniae, H. influenzae, M. pneumoniae, Legionella",
        "[住院病人] 常見 GNB、MSSA、MRSA、 Pseudomonas",
        "[評估] CXR + VBG/ABG + Lactate + Blood culture × 2套 + Sputum C/S",
      ],
      "treatment": [
        {
          "category": "A. 社區感染 (Community-onset)",
          "items": [
            {"drug": "門診治療", "dose": "Augmentin 或 2nd/3rd GEN Cephalosporin ± Macrolide"},
            {"drug": "或", "dose": "單用 Moxifloxacin"},
            {"drug": "住院治療", "dose": "2nd/3rd GEN Cephalosporin + Macrolide 或 Fluoroquinolone 單獨使用"},
          ],
        },
        {
          "category": "B. 住院病人 (Hospital-acquired)",
          "items": [
            {"drug": "廣效覆蓋", "dose": "Tazocin 或 Cefepime 或 Anti-PSA Carbapenem + Vancomycin（若有低血壓/靜脈管路）"},
            {"drug": "嗜中性球↓", "dose": "Tazocin 或 Cefepime 或 Anti-PSA Carbapenem + Vancomycin"},
          ],
        },
        {
          "category": "C. 抗藥菌參考",
          "items": [
            {"drug": "Pseudomonas aeruginosa", "dose": "Tazocin 或 Brosym 或 Ceftazidime 或 Cefepime 或 Carbapenems"},
            {"drug": "MRSA", "dose": "Vancomycin 或 Linezolid"},
          ],
        },
      ],
    },
  },

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_septic_shock",
    "lastUpdate": "2025/10/15",
    "title": "敗血性休克 (Septic Shock)",
    "subtitle": "FEMH R4: 值班基本觀念與初步處理",
    "content": {
      "intro":
          "### 基本觀念（值班必背）\n1. 記得留**至少兩套 blood cultures**（其他：S/C, U/C, pus/C）\n2. **廣效抗生素**：Tazocin, Cefepime, Fluoroquinolone\n3. **Crystalloid hydration**：Normal saline, Lactate Ringer\n4. **Vasopressors 首選 Norepinephrine** → 二線 Vasopressin → Keep MAP > 65\n5. **一定要架 monitor!!**\n\n### 錯誤 vs 正確\n❌ 只有掐水，卻沒有做 survey\n❌ 還沒掐夠水就直接上升壓藥物\n✅ 掐水一定要給夠（有時一兩千 cc都有可能）",
      "diagnosis": [
        "[菌血症] 中心靜脈導管（CVC, DLC, Port-A, Perm-cath）→ 同時抽周邊 + central line B/C，考慮更換管路",
        "[泌尿道感染] 下泌尿道症狀 + Flank pain + Septic signs → U/A + 換尿管 + Abdominal echo",
        "[軟組織感染] 標記範圍 + 做 PE 確認有無 crepitus → 範圍快速擴大或有 Compartment syndrome → Limb CT/CTA + 整外",
        "[腹內感染] 肚子變脹 + 腹痛 + Peritoneal signs → KUB + 考慮 Abdominal CT/CTA",
      ],
      "treatment": [
        {
          "category": "A. 抗生素原則",
          "items": [
            {"drug": "廣效抗生素", "dose": "Tazocin 或 Cefepime 或 Fluoroquinolone"},
            {"drug": "MRSA 覆蓋", "dose": "Vancomycin（若有低血壓、靜脈管路感染）"},
            {"drug": "調整", "dose": "培養出來後降階抗生素"},
          ],
        },
        {
          "category": "B. 輸液與血行動力",
          "items": [
            {"drug": "NS 或 LR", "dose": "Crystalloid hydration（給夠，有時 1000-2000 cc）"},
            {"drug": "Norepinephrine", "dose": "首選升壓劑 → 維持 MAP > 65"},
            {"drug": "Vasopressin", "dose": "二線（通常病房不常規開）"},
            {"drug": "Albumin/Hydrocortisone", "dose": "其他支持性治療"},
          ],
        },
      ],
    },
  },

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_fever",
    "lastUpdate": "2022/01/01",
    "title": "發燒 (Fever)",
    "subtitle": "PGY: 發燒鑑別與處置（含術後 5W）",
    "content": {
      "intro":
          "### 定義\n中心體溫（耳溫/肛溫）≥ 38℃。額溫/口溫低約 0.5℃，腋溫低 0.8℃。\n\n### 病因\n**感染占絕大多數**：呼吸道、消化道、泌尿道、傷口/軟組織、管路。\n其他：腹內感染、生殖系統、腦膜炎/腦炎、骨髓炎、感染性心內膜炎。",
      "diagnosis": [
        "[感染源] 常見：呼吸道、消化道、泌尿道、傷口/軟組織、管路",
        "[非感染] 藥物（抗精神病藥、止吐藥）、輸血反應、惡性高熱、靜脈血栓",
        "[術後發燒 5W] Wind (肺）、Water (尿）、Wound (傷口）、Walk (血栓）、Drug (藥物）",
        "[Neurologic malignant syndrome] 抗精神病藥、意識改變、肌肉僵硬、高熱",
        "[Serotonin syndrome] L-tryptophan、MAOI、SSRI/SNRI/TCA → 意識改變、肌肉陣攣、眼球震顫",
      ],
      "treatment": [
        {
          "category": "A. 基本處置",
          "items": [
            {"drug": "確認發燒", "dose": "排除測量誤差（保暖衣物/環境溫度）"},
            {"drug": "移除管路", "dose": "懷疑管路感染時移除並重置（導尿管、靜脈導管）"},
            {"drug": "抗生素原則", "dose": "使用 2-3 天仍發燒需考慮調整；當天剛用則不一定要換"},
          ],
        },
        {
          "category": "B. 敗血性休克相關發燒",
          "items": [
            {"drug": "廣效抗生素", "dose": "Tazocin 或 Cefepime 或 Fluoroquinolone + Vancomycin（如有低血壓/管路感染）"},
          ],
        },
        {
          "category": "C. 特殊情況",
          "items": [
            {"drug": "輸血反應", "dose": "停止輸血 + 抗組織胺 + 類固醇（嚴重者）"},
            {"drug": "惡性高熱", "dose": "Dantrolene + 積極降溫 + ICU"},
            {"drug": "DVT/PE", "dose": "抗凝血劑 + 超音波確診"},
          ],
        },
      ],
    },
  },

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_antimicrobial",
    "lastUpdate": "2022/01/01",
    "title": "抗菌原則 (Antimicrobial Principles)",
    "subtitle": "PGY: 抗生素選擇與抗藥菌覆蓋",
    "content": {
      "intro":
          "### 原則\n1. **Broad-spectrum → 窄效**：培養結果出來後降階。\n2. **IDSA 原則**：起始廣效覆蓋可能的致病菌。\n3. **TDM**：Vancomycin, Aminoglycoside, Teicoplanin 需要監測血中濃度。\n4. **Source control**：引流膿液、移除感染管路。",
      "diagnosis": [
        "[常見抗藥菌] MRSA, VRE, ESBL, CRE, Pseudomonas, Acinetobacter",
        "[MRSA 風險] 住院久、ICU、透析、先前 MRSA、感染史",
        "[ESBL 風險] 先前使用 Cephalosporin/Quinolone、住院久、免疫抑制",
        "[CRE 風險] 先前 Carbapenem 使用、住院久、免疫抑制、移植",
      ],
      "treatment": [
        {
          "category": "A. 常見病原抗生素選擇",
          "items": [
            {"drug": "S. pneumoniae", "dose": "Penicillin-susceptible → Ampicillin/Sulbactam；PRSP → Vancomycin + Ceftriaxone"},
            {"drug": "H. influenzae", "dose": "Ampicillin-sulbactam 或 2nd/3rd GEN Cephalosporin"},
            {"drug": "M. pneumoniae", "dose": "Macrolide 或 Doxycycline 或 Fluoroquinolone"},
            {"drug": "Legionella", "dose": "Azithromycin 或 Fluoroquinolone"},
          ],
        },
        {
          "category": "B. 抗藥菌抗生素",
          "items": [
            {"drug": "MRSA", "dose": "Vancomycin 或 Linezolid 或 Daptomycin"},
            {"drug": "VRE", "dose": "Linezolid 或 Daptomycin 或 Teicoplanin"},
            {"drug": "ESBL", "dose": "Carbapenem（一線）或 Cefepime/Tazocin（部分狀況）"},
            {"drug": "CRE", "dose": "Ceftazidime-avibactam 或 Meropenem 或 Colistin（最後一線）"},
            {"drug": "Pseudomonas", "dose": "Tazocin, Cefepime, Ceftazidime, Carbapenems, Aminoglycoside"},
          ],
        },
      ],
    },
  },

  {
    "group": "🫁 胸腔與感染",
    "id": "protocol_pleural_effusion",
    "lastUpdate": "2022/01/01",
    "title": "肋膜積液與氣胸 (Pleural Effusion/Pneumothorax)",
    "subtitle": "PGY: 肋膜積液分類與處理原則",
    "content": {
      "intro":
          "### 肋膜積液\nTransudate vs Exudate 區分（Light's criteria）：\n積液蛋白/血清蛋白 > 0.5 或 積液 LDH/血清 LDH > 0.6 或 積液 LDH > 血清 LDH 上限的 2/3。\n\n### 氣胸\n突發性尖銳性/肋膜性胸痛 + 喘。",
      "diagnosis": [
        "[Transudate] 心衰竭、肝硬化、腎病症候群、腎衰竭、腹膜透析",
        "[Exudate] 感染（肺炎、結核）、惡性腫瘤、胰臟炎、膽囊炎、肺栓塞",
        "[超音波] 兩側肺臟都可看到，明顯積液可以看到無回音暗區",
        "[張力性氣胸] 突發低血壓+氣管偏移+單側呼吸音消失 → 立即細針減壓",
      ],
      "treatment": [
        {
          "category": "A. 肋膜積液",
          "items": [
            {"drug": "穿刺引流適應症", "dose": "懷疑感染/惡性 + 大量積液（厚度 > 2cm）+ 慢性或復發性積液"},
            {"drug": "化膿性積液", "dose": "立即引流 + 抗生素 + 考慮手術"},
            {"drug": "心衰竭併積液", "dose": "限水 + 利尿劑 + 治療心衰竭"},
          ],
        },
        {
          "category": "B. 氣胸",
          "items": [
            {"drug": "小型穩定", "dose": "Simple mask 8-10L → 6hr 後追蹤 CXR"},
            {"drug": "大型或不穩定", "dose": "Pigtail 或 Chest tube 放置"},
            {"drug": "張力性氣胸", "dose": "立即細針減壓（鎖骨中線第2肋間）→ Chest tube"},
          ],
        },
      ],
    },
  },
];
// ==========================================
// 更新日誌資料 (請把這段貼在 data.dart 最下面)
// ==========================================
final List<Map<String, String>> updateLog = [
  {
    "version": "v1.3.0",
    "date": "2026/07/20",
    "content":
        "1. 新增 Batch 2: 胸腔與感染（呼吸困難、肺炎、敗血性休克、發燒、抗菌原則、肋膜積液）\n2. 來源：PGY臨床工作入門指南 2022 + FEMH值班疑難雜症 2025\n3. 建議群組色彩：Colors.teal",
  },
  {
    "version": "v1.2.0",
    "date": "2026/07/20",
    "content":
        "1. 新增 Batch 1: 神經與精神（意識改變、躁動、癲癇、頭痛、頭暈）\n2. 來源：PGY臨床工作入門指南 2022\n3. 建議群組色彩：Colors.deepPurple",
  },
  {
    "version": "v1.1.0",
    "date": "2026/02/02",
    "content":
        "1. 新增 2026 腦中風指引 (TNK/血壓禁忌)\n2. 新增週邊血幹細胞移植 (PBSCT) 總論\n3. 更新 On Call 值班 stroke 處置流程",
  },
  {
    "version": "v1.0.5", // 記得改版號
    "date": "2026/02/01", // 今天的日期
    "content": "1. 新增 2026 腦中風指引 (TNK, 大核心取栓)\n2. 更新血壓血糖控制標準", // 您這次做了什麼
  },
  {
    "version": "v1.0.4", // 記得改版號
    "date": "2026/02/01", // 今天的日期
    "content": "1. 新增心臟科脂質異常指引\n2. 修正計算機介面", // 您這次做了什麼
  },
  {
    "version": "v1.0.3",
    "date": "2026/01/31",
    "content":
        "1. 新增異體移植常規醫囑 (Allo-SCT Protocol)\n2. 整合 ABO Mismatch 輸血規範 (Major/Minor/Bi-directional)\n3. 修正 Cefepime 預防性投藥天數",
  },
  {
    "version": "v1.0.2",
    "date": "2026/01/30",
    "content": "1. 新增 Pre-BMT Evaluation Checklist\n2. 更新抗生素劑量計算機",
  },
  {
    "version": "v1.0.1",
    "date": "2026/01/26",
    "content": "1. 首次發布 Pocket Medicine\n2. 包含基礎計算機與常用表格",
  },
];
