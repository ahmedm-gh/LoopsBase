import "package:flutter/material.dart";

import "../../core/models/content.dart";
import "../../core/models/design_patterns.dart";
import "../../core/models/localized_text.dart";

import "creational_patterns.dart";
import "structural_patterns.dart";
import "behavioral_patterns.dart";
import "architectural_patterns.dart";
import "state_management_patterns.dart";
import "project_structure_patterns.dart";
import "keys.dart";

const List<DesignPatternsCategory> designPatternCategories = [
  DesignPatternsCategory(
    id: PK.creationalPatterns,
    title: LocS(en: "Creational Patterns", ar: "الأنماط الإنشائية"),
    description: LocV(
      en: [
        StrContent(
          "Creational patterns abstract the instantiation process, making systems independent of how objects are created, composed, and represented.",
        ),
      ],
      ar: [
        StrContent(
          "الأنماط الإنشائية تجرد عملية الإنشاء، مما يجعل الأنظمة مستقلة عن كيفية إنشاء الكائنات وتركيبها وتمثيلها.",
        ),
      ],
    ),
    isClassic: true,
    patterns: [
      PK.factoryMethod,
      PK.abstractFactory,
      PK.builder,
      PK.prototype,
      PK.singleton,
      PK.objectPool,
      PK.lazyInitialization,
      PK.multiton,
      PK.factoryKit,
    ],
    keyCharacteristics: LocV(
      en: [
        "Abstract object creation",
        "Hide construction complexity",
        "Control instantiation process",
        "Promote code reusability",
        "Support flexibility in object creation",
      ],
      ar: [
        "تجريد إنشاء الكائنات",
        "إخفاء تعقيد البناء",
        "التحكم في عملية الإنشاء",
        "تعزيز إعادة استخدام الكود",
        "دعم المرونة في إنشاء الكائنات",
      ],
    ),
    icon: Icons.construction,
    color: Colors.blue,
    commonUseCases: LocV(
      en: [
        "Managing object lifecycle and dependencies",
        "Creating families of related objects",
        "Building complex objects step by step",
        "Controlling instance creation and reuse",
        "Hiding implementation details from clients",
      ],
      ar: [
        "إدارة دورة حياة الكائنات والتبعيات",
        "إنشاء عائلات من الكائنات المترابطة",
        "بناء كائنات معقدة خطوة بخطوة",
        "التحكم في إنشاء وإعادة استخدام النسخ",
        "إخفاء تفاصيل التنفيذ عن العملاء",
      ],
    ),
    realWorldExamples: LocV(
      en: [
        "UI component factories in Flutter",
        "Database connection pools",
        "Document builders (PDF, Word, etc.)",
        "Configuration managers",
        "Dependency injection containers",
      ],
      ar: [
        "مصانع مكونات واجهة المستخدم في Flutter",
        "تجمعات اتصال قاعدة البيانات",
        "بناة المستندات (PDF، Word، إلخ)",
        "مديرو الإعدادات",
        "حاويات حقن الاعتمادية",
      ],
    ),
    relatedCategories: [PK.behavioralPatterns],
    learningPath: [
      PK.singleton,
      PK.factoryMethod,
      PK.builder,
      PK.abstractFactory,
      PK.prototype,
      PK.lazyInitialization,
      PK.objectPool,
      PK.multiton,
      PK.factoryKit,
    ],
  ),
  DesignPatternsCategory(
    id: PK.structuralPatterns,
    title: LocS(en: "Structural Patterns", ar: "الأنماط الهيكلية"),
    description: LocV(
      en: [
        StrContent(
          "Structural patterns deal with object composition, creating relationships between objects to form larger structures while keeping them flexible and efficient.",
        ),
      ],
      ar: [
        StrContent(
          "الأنماط الهيكلية تتعامل مع تركيب الكائنات، وإنشاء علاقات بين الكائنات لتشكيل بنى أكبر مع الحفاظ على مرونتها وكفاءتها.",
        ),
      ],
    ),
    isClassic: true,
    patterns: [
      PK.adapter,
      PK.bridge,
      PK.composite,
      PK.decorator,
      PK.facade,
      PK.flyweight,
      PK.proxy,
      PK.wrapper,
      PK.dataMapper,
      PK.dto,
      PK.extensionObject,
      PK.plugin,
    ],
    keyCharacteristics: LocV(
      en: [
        "Compose objects into larger structures",
        "Define relationships between entities",
        "Simplify complex subsystems",
        "Add functionality dynamically",
        "Optimize resource usage",
      ],
      ar: [
        "تركيب الكائنات في بنى أكبر",
        "تعريف العلاقات بين الكيانات",
        "تبسيط الأنظمة الفرعية المعقدة",
        "إضافة وظائف ديناميكياً",
        "تحسين استخدام الموارد",
      ],
    ),
    icon: Icons.account_tree_rounded,
    color: Colors.green,
    commonUseCases: LocV(
      en: [
        "Integrating legacy code with new systems",
        "Creating flexible class hierarchies",
        "Adding responsibilities without inheritance",
        "Simplifying complex interfaces",
        "Managing memory-intensive objects",
      ],
      ar: [
        "دمج الكود القديم مع الأنظمة الجديدة",
        "إنشاء تسلسلات هرمية مرنة للفئات",
        "إضافة مسؤوليات دون وراثة",
        "تبسيط الواجهات المعقدة",
        "إدارة الكائنات كثيفة الذاكرة",
      ],
    ),
    realWorldExamples: LocV(
      en: [
        "Widget wrappers in Flutter",
        "API adapters for third-party services",
        "File system hierarchies",
        "Stream decorators",
        "Database ORMs and mappers",
      ],
      ar: [
        "أغلفة الودجات في Flutter",
        "محولات API لخدمات الطرف الثالث",
        "تسلسلات هرمية لنظام الملفات",
        "مزخرفات التدفقات",
        "ORMs ومخططات قاعدة البيانات",
      ],
    ),
    relatedCategories: [PK.creationalPatterns, PK.behavioralPatterns],
    learningPath: [
      PK.adapter,
      PK.facade,
      PK.decorator,
      PK.composite,
      PK.proxy,
      PK.bridge,
      PK.flyweight,
      PK.wrapper,
      PK.dto,
      PK.dataMapper,
      PK.extensionObject,
      PK.plugin,
    ],
  ),
  DesignPatternsCategory(
    id: PK.behavioralPatterns,
    title: LocS(en: "Behavioral Patterns", ar: "الأنماط السلوكية"),
    description: LocV(
      en: [
        StrContent(
          "Behavioral patterns focus on communication between objects, defining how objects interact and distribute responsibilities while staying loosely coupled.",
        ),
      ],
      ar: [
        StrContent(
          "الأنماط السلوكية تركز على التواصل بين الكائنات، وتعريف كيفية تفاعل الكائنات وتوزيع المسؤوليات مع البقاء مفصولة بشكل فضفاض.",
        ),
      ],
    ),
    isClassic: true,
    patterns: [
      PK.chainOfResponsibility,
      PK.command,
      PK.interpreter,
      PK.iterator,
      PK.mediator,
      PK.memento,
      PK.observer,
      PK.state,
      PK.strategy,
      PK.templateMethod,
      PK.visitor,
      PK.dependencyInjection,
      PK.serviceLocator,
      PK.repository,
      PK.unitOfWork,
      PK.specification,
      PK.policy,
    ],
    keyCharacteristics: LocV(
      en: [
        "Define object communication",
        "Distribute responsibilities",
        "Encapsulate algorithms",
        "Control flow of execution",
        "Enable loose coupling",
      ],
      ar: [
        "تعريف تواصل الكائنات",
        "توزيع المسؤوليات",
        "تغليف الخوارزميات",
        "التحكم في تدفق التنفيذ",
        "تمكين الفصل الفضفاض",
      ],
    ),
    // icon: Icons.pivot_table_chart_rounded,
    icon: Icons.webhook_rounded,
    color: Colors.orange,
    commonUseCases: LocV(
      en: [
        "Implementing undo/redo functionality",
        "Event handling and notification systems",
        "State machines and workflows",
        "Swappable algorithms and strategies",
        "Request processing pipelines",
      ],
      ar: [
        "تنفيذ وظيفة التراجع/الإعادة",
        "معالجة الأحداث وأنظمة الإخطار",
        "آلات الحالة وسير العمل",
        "خوارزميات واستراتيجيات قابلة للتبديل",
        "خطوط معالجة الطلبات",
      ],
    ),
    realWorldExamples: LocV(
      en: [
        "Flutter's ChangeNotifier and listeners",
        "Text editors with undo/redo",
        "Game AI state machines",
        "Payment processing strategies",
        "Data validation pipelines",
      ],
      ar: [
        "ChangeNotifier والمستمعين في Flutter",
        "محررات النصوص مع التراجع/الإعادة",
        "آلات حالة الذكاء الاصطناعي للألعاب",
        "استراتيجيات معالجة الدفع",
        "خطوط التحقق من البيانات",
      ],
    ),
    relatedCategories: [PK.creationalPatterns, PK.structuralPatterns],
    learningPath: [
      PK.observer,
      PK.strategy,
      PK.command,
      PK.state,
      PK.templateMethod,
      PK.chainOfResponsibility,
      PK.mediator,
      PK.memento,
      PK.iterator,
      PK.visitor,
      PK.interpreter,
      PK.dependencyInjection,
      PK.repository,
      PK.specification,
      PK.policy,
      PK.serviceLocator,
      PK.unitOfWork,
    ],
  ),
  DesignPatternsCategory(
    id: PK.architecturalPatterns,
    title: LocS(en: "Architectural Patterns", ar: "الأنماط المعمارية"),
    description: LocV(
      en: [
        StrContent(
          "Architectural patterns provide templates for organizing entire applications, defining the high-level structure and relationships between major components.",
        ),
      ],
      ar: [
        StrContent(
          "الأنماط المعمارية توفر قوالب لتنظيم التطبيقات بالكامل، وتعريف البنية عالية المستوى والعلاقات بين المكونات الرئيسية.",
        ),
      ],
    ),
    isClassic: false,
    patterns: [
      PK.mvc,
      PK.mvp,
      PK.mvvm,
      PK.mvu,
      PK.cleanArchitecture,
      PK.hexagonal,
      PK.layeredArchitecture,
      PK.modularMonolith,
      PK.microservices,
      PK.cqrs,
      PK.eventSourcing,
    ],
    keyCharacteristics: LocV(
      en: [
        "Define system-wide structure",
        "Separate concerns at high level",
        "Enable scalability and maintainability",
        "Guide development approach",
        "Support team organization",
      ],
      ar: [
        "تعريف البنية على مستوى النظام",
        "فصل الاهتمامات على مستوى عالٍ",
        "تمكين القابلية للتوسع والصيانة",
        "توجيه نهج التطوير",
        "دعم تنظيم الفريق",
      ],
    ),
    icon: Icons.auto_awesome_mosaic_rounded,
    color: Colors.teal,
    commonUseCases: LocV(
      en: [
        "Organizing large-scale applications",
        "Separating UI from business logic",
        "Building testable and maintainable systems",
        "Managing complex domain logic",
        "Scaling applications and teams",
      ],
      ar: [
        "تنظيم التطبيقات واسعة النطاق",
        "فصل واجهة المستخدم عن منطق العمل",
        "بناء أنظمة قابلة للاختبار والصيانة",
        "إدارة منطق المجال المعقد",
        "توسيع التطبيقات والفرق",
      ],
    ),
    realWorldExamples: LocV(
      en: [
        "E-commerce platforms",
        "Banking applications",
        "Social media apps",
        "Enterprise resource planning systems",
        "Content management systems",
      ],
      ar: [
        "منصات التجارة الإلكترونية",
        "تطبيقات البنوك",
        "تطبيقات وسائل التواصل الاجتماعي",
        "أنظمة تخطيط موارد المؤسسات",
        "أنظمة إدارة المحتوى",
      ],
    ),
    relatedCategories: [PK.stateManagementPatterns],
    learningPath: [
      PK.mvc,
      PK.mvp,
      PK.mvvm,
      PK.mvu,
      PK.layeredArchitecture,
      PK.cleanArchitecture,
      PK.hexagonal,
      PK.modularMonolith,
      PK.cqrs,
      PK.eventSourcing,
      PK.microservices,
    ],
  ),
  DesignPatternsCategory(
    id: PK.stateManagementPatterns,
    title: LocS(en: "State Management", ar: "إدارة الحالة"),
    description: LocV(
      en: [
        StrContent(
          "State management patterns help organize and control application state in Flutter, ensuring predictable data flow and UI updates.",
        ),
      ],
      ar: [
        StrContent(
          "أنماط إدارة الحالة تساعد في تنظيم والتحكم في حالة التطبيق في Flutter، مما يضمن تدفق بيانات قابل للتنبؤ وتحديثات واجهة المستخدم.",
        ),
      ],
    ),
    isClassic: false,
    patterns: [
      PK.bloc,
      PK.cubit,
      PK.provider,
      PK.stateNotifier,
      PK.redux,
      PK.unidirectionalDataFlow,
      PK.featureFirstStructure,
      PK.presentationDomainData,
    ],
    keyCharacteristics: LocV(
      en: [
        "Manage application state",
        "Control data flow",
        "Enable reactive UI updates",
        "Separate business logic from UI",
        "Support testability",
      ],
      ar: [
        "إدارة حالة التطبيق",
        "التحكم في تدفق البيانات",
        "تمكين تحديثات واجهة المستخدم التفاعلية",
        "فصل منطق العمل عن واجهة المستخدم",
        "دعم القابلية للاختبار",
      ],
    ),
    icon: Icons.model_training_rounded,
    color: Colors.red,
    commonUseCases: LocV(
      en: [
        "Managing complex UI state",
        "Sharing state across widgets",
        "Handling async operations",
        "Implementing undo/redo",
        "Building reactive applications",
      ],
      ar: [
        "إدارة حالة واجهة المستخدم المعقدة",
        "مشاركة الحالة عبر الودجات",
        "معالجة العمليات غير المتزامنة",
        "تنفيذ التراجع/الإعادة",
        "بناء تطبيقات تفاعلية",
      ],
    ),
    realWorldExamples: LocV(
      en: [
        "Shopping cart in e-commerce apps",
        "Form validation and state",
        "Real-time chat applications",
        "News feed with infinite scroll",
        "Authentication state management",
      ],
      ar: [
        "عربة التسوق في تطبيقات التجارة الإلكترونية",
        "التحقق من النماذج والحالة",
        "تطبيقات الدردشة في الوقت الفعلي",
        "موجز الأخبار مع التمرير اللانهائي",
        "إدارة حالة المصادقة",
      ],
    ),
    relatedCategories: [PK.architecturalPatterns, PK.behavioralPatterns],
    learningPath: [
      PK.provider,
      PK.cubit,
      PK.bloc,
      PK.stateNotifier,
      PK.unidirectionalDataFlow,
      PK.redux,
      PK.featureFirstStructure,
      PK.presentationDomainData,
    ],
  ),
];

final Map<String, DesignPattern> designPatterns = {
  ...creationalPatternsData,
  ...structuralPatternsData,
  ...behavioralPatternsData,
  ...architecturalPatternsData,
  ...stateManagementPatternsData,
  ...projectStructurePatternsData,
};
