import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/core/models/content.dart';
import 'package:loopsbase/core/models/localized_text.dart';
import 'keys.dart';

final Map<String, DesignPattern> projectStructurePatternsData = {
  PK.featureFirstStructure: const DesignPattern(
    id: PK.featureFirstStructure,
    title: LocS(en: "Feature-First Structure", ar: "بنية الميزة أولاً"),
    description: LocS(
      en: "Organizes code by features rather than by layers",
      ar: "ينظم الكود حسب الميزات بدلاً من الطبقات",
    ),
    group: .projectStructure,
    category: .modern,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Feature-First structure organizes code by features/modules rather than technical layers. Each feature contains all its related files (UI, logic, data) in one place.",
        ),
        ULContent(
          title: "Structure Example:",
          value: [
            "lib/features/auth/ (login, signup, etc.)",
            "lib/features/home/ (home screen, widgets)",
            "lib/features/profile/ (profile screen, logic)",
            "lib/core/ (shared utilities, widgets)",
          ],
        ),
      ],
      ar: [
        StrContent(
          "بنية الميزة أولاً تنظم الكود حسب الميزات/الوحدات بدلاً من الطبقات التقنية. كل ميزة تحتوي على جميع ملفاتها ذات الصلة (واجهة المستخدم، المنطق، البيانات) في مكان واحد.",
        ),
        ULContent(
          title: "مثال البنية:",
          value: [
            "lib/features/auth/ (تسجيل الدخول، التسجيل، إلخ.)",
            "lib/features/home/ (شاشة الرئيسية، الودجات)",
            "lib/features/profile/ (شاشة الملف الشخصي، المنطق)",
            "lib/core/ (أدوات مشتركة، ودجات)",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Easy to locate feature code",
        "Scalable for large projects",
        "Clear feature boundaries",
        "Easy to add/remove features",
      ],
      ar: [
        "سهولة تحديد موقع كود الميزة",
        "قابل للتوسع للمشاريع الكبيرة",
        "حدود ميزة واضحة",
        "سهولة إضافة/إزالة الميزات",
      ],
    ),
    cons: LocSL(
      en: [
        "Can have code duplication",
        "Shared code organization needed",
        "May be overkill for small apps",
      ],
      ar: [
        "قد يكون هناك تكرار كود",
        "تنظيم الكود المشترك مطلوب",
        "قد يكون مبالغاً فيه للتطبيقات الصغيرة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Feature-First when:"),
        ULContent(
          value: [
            "Building large applications",
            "Multiple developers/teams",
            "Features are independent",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الميزة أولاً عندما:"),
        ULContent(
          value: ["بناء تطبيقات كبيرة", "مطورون/فرق متعددة", "الميزات مستقلة"],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not organizing shared code properly",
        "Too many nested folders",
        "Unclear feature boundaries",
      ],
      ar: [
        "عدم تنظيم الكود المشترك بشكل صحيح",
        "مجلدات متداخلة كثيرة جداً",
        "حدود ميزة غير واضحة",
      ],
    ),
    relatedPatterns: [PK.presentationDomainData, PK.modularMonolith],
  ),
  PK.presentationDomainData: const DesignPattern(
    id: PK.presentationDomainData,
    title: LocS(
      en: "Presentation-Domain-Data (Layer-First)",
      ar: "العرض-المجال-البيانات (الطبقة أولاً)",
    ),
    description: LocS(
      en: "Organizes code by technical layers (presentation, domain, data)",
      ar: "ينظم الكود حسب الطبقات التقنية (العرض، المجال، البيانات)",
    ),
    group: .projectStructure,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Presentation-Domain-Data structure organizes code by technical layers. This is common in Clean Architecture implementations in Flutter.",
        ),
        ULContent(
          title: "Layers:",
          value: [
            "Presentation: UI, widgets, state management",
            "Domain: Business logic, entities, use cases",
            "Data: Repositories, data sources, models",
          ],
        ),
      ],
      ar: [
        StrContent(
          "بنية العرض-المجال-البيانات تنظم الكود حسب الطبقات التقنية. هذا شائع في تنفيذات المعمارية النظيفة في Flutter.",
        ),
        ULContent(
          title: "الطبقات:",
          value: [
            "العرض: واجهة المستخدم، الودجات، إدارة الحالة",
            "المجال: منطق العمل، الكيانات، حالات الاستخدام",
            "البيانات: المستودعات، مصادر البيانات، النماذج",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Clear separation of concerns",
        "Follows Clean Architecture",
        "Easy to understand layers",
        "Good for learning architecture",
      ],
      ar: [
        "فصل واضح للاهتمامات",
        "يتبع المعمارية النظيفة",
        "سهولة فهم الطبقات",
        "جيد لتعلم المعمارية",
      ],
    ),
    cons: LocSL(
      en: [
        "Files spread across many folders",
        "Hard to locate all feature code",
        "Can feel over-engineered",
      ],
      ar: [
        "الملفات منتشرة عبر مجلدات كثيرة",
        "صعوبة تحديد موقع كل كود الميزة",
        "قد يبدو مُفرط الهندسة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Layer-First when:"),
        ULContent(
          value: [
            "Learning Clean Architecture",
            "Small to medium apps",
            "Team prefers layered approach",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الطبقة أولاً عندما:"),
        ULContent(
          value: [
            "تعلم المعمارية النظيفة",
            "تطبيقات صغيرة إلى متوسطة",
            "الفريق يفضل النهج الطبقي",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Mixing layers", "Unclear dependencies", "Over-abstracting"],
      ar: ["خلط الطبقات", "تبعيات غير واضحة", "التجريد المفرط"],
    ),
    relatedPatterns: [PK.cleanArchitecture, PK.featureFirstStructure],
  ),
};
