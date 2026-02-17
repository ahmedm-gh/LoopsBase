import 'package:flutter/material.dart';
import 'package:loopsbase/core/models/localized_text.dart';

class FactoryMethodDiagramData {
  const FactoryMethodDiagramData.en({
    this.client = "Client",
    this.creator = "Creator",
    this.factoryMethod = "factoryMethod()",
    this.productInterface = "Product",
    this.concreteCreator = "ConcreteCreator",
    this.concreteProduct = "ConcreteProduct",
  });

  const FactoryMethodDiagramData.ar({
    this.client = "العميل",
    this.creator = "المُنشئ",
    this.factoryMethod = "factoryMethod()",
    this.productInterface = "المنتج",
    this.concreteCreator = "المُنشئ المحدد",
    this.concreteProduct = "المنتج المحدد",
  });

  final String client;
  final String creator;
  final String factoryMethod;
  final String productInterface;
  final String concreteCreator;
  final String concreteProduct;
}

class AbstractFactoryDiagramData {
  const AbstractFactoryDiagramData.en({
    this.client = "Client",
    this.abstractFactory = "AbstractFactory",
    this.concreteFactory1 = "ConcreteFactory1",
    this.concreteFactory2 = "ConcreteFactory2",
    this.productA = "ProductA",
    this.productB = "ProductB",
    this.productA1 = "ProductA1",
    this.productA2 = "ProductA2",
    this.productB1 = "ProductB1",
    this.productB2 = "ProductB2",
    this.createProductA = "createProductA()",
    this.createProductB = "createProductB()",
  });

  const AbstractFactoryDiagramData.ar({
    this.client = "العميل",
    this.abstractFactory = "المصنع المجرد",
    this.concreteFactory1 = "المصنع المحدد 1",
    this.concreteFactory2 = "المصنع المحدد 2",
    this.productA = "المنتج أ",
    this.productB = "المنتج ب",
    this.productA1 = "المنتج أ1",
    this.productA2 = "المنتج أ2",
    this.productB1 = "المنتج ب1",
    this.productB2 = "المنتج ب2",
    this.createProductA = "createProductA()",
    this.createProductB = "createProductB()",
  });

  final String client;
  final String abstractFactory;
  final String concreteFactory1;
  final String concreteFactory2;
  final String productA;
  final String productB;
  final String productA1;
  final String productA2;
  final String productB1;
  final String productB2;
  final String createProductA;
  final String createProductB;
}

class BuilderDiagramData {
  const BuilderDiagramData.en({
    this.director = "Director",
    this.builder = "Builder",
    this.concreteBuilder = "ConcreteBuilder",
    this.product = "Product",
    this.construct = "construct()",
    this.buildPart1 = "buildPart1()",
    this.buildPart2 = "buildPart2()",
    this.getResult = "getResult()",
  });

  const BuilderDiagramData.ar({
    this.director = "المدير",
    this.builder = "البناء",
    this.concreteBuilder = "البناء المحدد",
    this.product = "المنتج",
    this.construct = "construct()",
    this.buildPart1 = "buildPart1()",
    this.buildPart2 = "buildPart2()",
    this.getResult = "getResult()",
  });

  final String director;
  final String builder;
  final String concreteBuilder;
  final String product;
  final String construct;
  final String buildPart1;
  final String buildPart2;
  final String getResult;
}

class PrototypeDiagramData {
  const PrototypeDiagramData.en({
    this.client = "Client",
    this.prototype = "Prototype",
    this.concretePrototype1 = "ConcretePrototype1",
    this.concretePrototype2 = "ConcretePrototype2",
    this.clone = "clone()",
  });

  const PrototypeDiagramData.ar({
    this.client = "العميل",
    this.prototype = "النموذج الأولي",
    this.concretePrototype1 = "النموذج المحدد 1",
    this.concretePrototype2 = "النموذج المحدد 2",
    this.clone = "clone()",
  });

  final String client;
  final String prototype;
  final String concretePrototype1;
  final String concretePrototype2;
  final String clone;
}

class SingletonDiagramData {
  const SingletonDiagramData.en({
    this.client = "Client",
    this.singleton = "Singleton",
    this.instance = "- instance: Singleton",
    this.getInstance = "+ getInstance(): Singleton",
    this.constructor = "- Singleton()",
  });

  const SingletonDiagramData.ar({
    this.client = "العميل",
    this.singleton = "المفرد",
    this.instance = "- instance: Singleton",
    this.getInstance = "+ getInstance(): Singleton",
    this.constructor = "- Singleton()",
  });

  final String client;
  final String singleton;
  final String instance;
  final String getInstance;
  final String constructor;
}

class ObjectPoolDiagramData {
  const ObjectPoolDiagramData.en({
    this.client = "Client",
    this.pool = "Pool",
    this.reusableObject = "Reusable",
    this.acquire = "acquire()",
    this.release = "release()",
    this.available = "Available",
    this.inUse = "In Use",
  });

  const ObjectPoolDiagramData.ar({
    this.client = "العميل",
    this.pool = "التجمع",
    this.reusableObject = "قابل لإعادة الاستخدام",
    this.acquire = "acquire()",
    this.release = "release()",
    this.available = "متاح",
    this.inUse = "قيد الاستخدام",
  });

  final String client;
  final String pool;
  final String reusableObject;
  final String acquire;
  final String release;
  final String available;
  final String inUse;
}

class LazyInitializationDiagramData {
  const LazyInitializationDiagramData.en({
    this.client = "Client",
    this.lazyHolder = "LazyHolder",
    this.resource = "Resource",
    this.getResource = "getResource()",
    this.initialized = "initialized?",
    this.yes = "Yes",
    this.no = "No",
    this.create = "Create",
    this.returnCached = "Return cached",
  });

  const LazyInitializationDiagramData.ar({
    this.client = "العميل",
    this.lazyHolder = "الحامل الكسول",
    this.resource = "المورد",
    this.getResource = "getResource()",
    this.initialized = "مُهيأ؟",
    this.yes = "نعم",
    this.no = "لا",
    this.create = "إنشاء",
    this.returnCached = "إرجاع المُخزن",
  });

  final String client;
  final String lazyHolder;
  final String resource;
  final String getResource;
  final String initialized;
  final String yes;
  final String no;
  final String create;
  final String returnCached;
}

class MultitonDiagramData {
  const MultitonDiagramData.en({
    this.client = "Client",
    this.multiton = "Multiton",
    this.instances = "- instances: Map",
    this.getInstance = "getInstance(key)",
    this.instance1 = "Instance 'key1'",
    this.instance2 = "Instance 'key2'",
    this.instance3 = "Instance 'key3'",
  });

  const MultitonDiagramData.ar({
    this.client = "العميل",
    this.multiton = "المتعدد",
    this.instances = "- instances: Map",
    this.getInstance = "getInstance(key)",
    this.instance1 = "Instance 'key1'",
    this.instance2 = "Instance 'key2'",
    this.instance3 = "Instance 'key3'",
  });

  final String client;
  final String multiton;
  final String instances;
  final String getInstance;
  final String instance1;
  final String instance2;
  final String instance3;
}

class FactoryKitDiagramData {
  const FactoryKitDiagramData.en({
    this.client = "Client",
    this.factoryKit = "FactoryKit",
    this.product = "Product",
    this.register = "register(key, factory)",
    this.create = "create(key)",
    this.registry = "Registry",
    this.factory1 = "Factory 1",
    this.factory2 = "Factory 2",
    this.product1 = "Product1",
    this.product2 = "Product2",
  });

  const FactoryKitDiagramData.ar({
    this.client = "العميل",
    this.factoryKit = "مجموعة المصنع",
    this.product = "المنتج",
    this.register = "register(key, factory)",
    this.create = "create(key)",
    this.registry = "السجل",
    this.factory1 = "مصنع 1",
    this.factory2 = "مصنع 2",
    this.product1 = "منتج 1",
    this.product2 = "منتج 2",
  });

  final String client;
  final String factoryKit;
  final String product;
  final String register;
  final String create;
  final String registry;
  final String factory1;
  final String factory2;
  final String product1;
  final String product2;
}

extension ColorToHex on Color {
  String toCssString() {
    return '#${toARGB32().toRadixString(16).padLeft(8, '0').substring(2)}';
  }
}

abstract class Diagrams {
  static String generateFactoryMethodSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: FactoryMethodDiagramData.ar(),
      en: FactoryMethodDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="16" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="14" fill="$lineColor" text-anchor="middle"';
    final String interfaceTagStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="middle" font-style="italic"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 720 380" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
    <marker id="triangleArrow" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- ROW 1: Client, Creator, Product -->
  <!-- Client -->
  <rect x="20" y="20" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="65" $titleStyle>${data.client}</text>

  <!-- Creator (Abstract) -->
  <rect x="240" y="20" width="220" height="80" $boxStyle rx="5" />
  <text x="350" y="40" $interfaceTagStyle>&lt;&lt;Abstract&gt;&gt;</text>
  <text x="350" y="65" $titleStyle>${data.creator}</text>
  <line x1="240" y1="75" x2="460" y2="75" stroke="$lineColor" stroke-width="1" />
  <text x="350" y="95" $methodStyle>${data.factoryMethod}</text>

  <!-- Product (Interface) -->
  <rect x="540" y="20" width="160" height="80" $boxStyle rx="5" />
  <text x="620" y="40" $interfaceTagStyle>&lt;&lt;Interface&gt;&gt;</text>
  <text x="620" y="65" $titleStyle>${data.productInterface}</text>

  <!-- ROW 2: Concrete Implementations -->
  <!-- ConcreteCreator -->
  <rect x="240" y="240" width="220" height="80" $concreteBoxStyle rx="5" />
  <text x="350" y="285" $titleStyle fill="$concreteTextColor">${data.concreteCreator}</text>

  <!-- ConcreteProduct -->
  <rect x="540" y="240" width="160" height="80" $concreteBoxStyle rx="5" />
  <text x="620" y="285" $titleStyle fill="$concreteTextColor">${data.concreteProduct}</text>

  <!-- CONNECTIONS -->
  <!-- Client to Creator (solid arrow) -->
  <path d="M 160 60 L 240 60" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Creator to Product (solid arrow) -->
  <path d="M 460 60 L 540 60" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Creator to ConcreteCreator (dashed inheritance) -->
  <path d="M 350 100 L 350 240" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Product to ConcreteProduct (dashed inheritance) -->
  <path d="M 620 100 L 620 240" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ConcreteCreator to ConcreteProduct (dashed creates) -->
  <path d="M 460 280 L 540 280" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateAbstractFactorySvg(
    String langCode,
    ColorScheme colors,
  ) {
    final data = const LocV(
      ar: AbstractFactoryDiagramData.ar(),
      en: AbstractFactoryDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';
    final String interfaceStyle =
        'font-family="sans-serif" font-size="10" fill="$lineColor" text-anchor="middle" font-style="italic"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 880 480" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="100" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="145" $titleStyle>${data.client}</text>

  <!-- Abstract Factory -->
  <rect x="240" y="40" width="240" height="120" $boxStyle rx="5" />
  <text x="360" y="60" $interfaceStyle>&lt;&lt;Abstract&gt;&gt;</text>
  <text x="360" y="85" $titleStyle>${data.abstractFactory}</text>
  <line x1="240" y1="100" x2="480" y2="100" stroke="$lineColor" stroke-width="1" />
  <text x="360" y="125" $methodStyle>${data.createProductA}</text>
  <text x="360" y="145" $methodStyle>${data.createProductB}</text>

  <!-- Product A Interface -->
  <rect x="620" y="20" width="140" height="80" $boxStyle rx="5" />
  <text x="690" y="40" $interfaceStyle>&lt;&lt;Interface&gt;&gt;</text>
  <text x="690" y="65" $titleStyle>${data.productA}</text>

  <!-- Product B Interface -->
  <rect x="620" y="140" width="140" height="80" $boxStyle rx="5" />
  <text x="690" y="160" $interfaceStyle>&lt;&lt;Interface&gt;&gt;</text>
  <text x="690" y="185" $titleStyle>${data.productB}</text>

  <!-- Concrete Factory 1 -->
  <rect x="140" y="280" width="200" height="80" $concreteBoxStyle rx="5" />
  <text x="240" y="325" $titleStyle fill="$concreteTextColor">${data.concreteFactory1}</text>

  <!-- Concrete Factory 2 -->
  <rect x="440" y="280" width="200" height="80" $concreteBoxStyle rx="5" />
  <text x="540" y="325" $titleStyle fill="$concreteTextColor">${data.concreteFactory2}</text>

  <!-- Product A1 -->
  <rect x="620" y="280" width="120" height="60" $concreteBoxStyle rx="5" />
  <text x="680" y="315" $titleStyle fill="$concreteTextColor">${data.productA1}</text>

  <!-- Product A2 -->
  <rect x="760" y="280" width="120" height="60" $concreteBoxStyle rx="5" />
  <text x="820" y="315" $titleStyle fill="$concreteTextColor">${data.productA2}</text>

  <!-- Product B1 -->
  <rect x="620" y="380" width="120" height="60" $concreteBoxStyle rx="5" />
  <text x="680" y="415" $titleStyle fill="$concreteTextColor">${data.productB1}</text>

  <!-- Product B2 -->
  <rect x="760" y="380" width="120" height="60" $concreteBoxStyle rx="5" />
  <text x="820" y="415" $titleStyle fill="$concreteTextColor">${data.productB2}</text>

  <!-- Arrows -->
  <!-- Client to AbstractFactory -->
  <path d="M 160 140 L 240 100" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- AbstractFactory to ProductA -->
  <path d="M 480 70 L 620 60" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- AbstractFactory to ProductB -->
  <path d="M 480 150 L 620 180" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory1 to AbstractFactory (inheritance) -->
  <path d="M 240 280 L 280 160" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory2 to AbstractFactory (inheritance) -->
  <path d="M 540 280 L 440 160" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory1 creates ProductA1 -->
  <path d="M 340 310 L 620 310" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory1 creates ProductA2 -->
  <path d="M 340 330 L 760 310" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory2 creates ProductB1 -->
  <path d="M 540 340 L 680 380" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />

  <!-- ConcreteFactory2 creates ProductB2 -->
  <path d="M 560 340 L 820 380" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />

  <!-- ProductA1 implements ProductA -->
  <path d="M 680 280 L 690 100" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ProductA2 implements ProductA -->
  <path d="M 820 280 L 800 100" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ProductB1 implements ProductB -->
  <path d="M 680 380 L 690 220" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ProductB2 implements ProductB -->
  <path d="M 820 380 L 800 220" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateBuilderSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: BuilderDiagramData.ar(),
      en: BuilderDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';
    final String interfaceStyle =
        'font-family="sans-serif" font-size="10" fill="$lineColor" text-anchor="middle" font-style="italic"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 700 380" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Director -->
  <rect x="20" y="80" width="160" height="100" $boxStyle rx="5" />
  <text x="100" y="110" $titleStyle>${data.director}</text>
  <line x1="20" y1="130" x2="180" y2="130" stroke="$lineColor" stroke-width="1" />
  <text x="100" y="160" $methodStyle>${data.construct}</text>

  <!-- Builder Interface -->
  <rect x="280" y="40" width="180" height="140" $boxStyle rx="5" />
  <text x="370" y="60" $interfaceStyle>&lt;&lt;Abstract&gt;&gt;</text>
  <text x="370" y="85" $titleStyle>${data.builder}</text>
  <line x1="280" y1="100" x2="460" y2="100" stroke="$lineColor" stroke-width="1" />
  <text x="370" y="125" $methodStyle>${data.buildPart1}</text>
  <text x="370" y="150" $methodStyle>${data.buildPart2}</text>
  <text x="370" y="175" $methodStyle>${data.getResult}</text>

  <!-- Product -->
  <rect x="560" y="80" width="140" height="100" $concreteBoxStyle rx="5" />
  <text x="630" y="135" $titleStyle fill="$concreteTextColor">${data.product}</text>

  <!-- ConcreteBuilder -->
  <rect x="280" y="260" width="180" height="80" $concreteBoxStyle rx="5" />
  <text x="370" y="305" $titleStyle fill="$concreteTextColor">${data.concreteBuilder}</text>

  <!-- Arrows -->
  <!-- Director to Builder -->
  <path d="M 180 130 L 280 110" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Builder to Product -->
  <path d="M 460 110 L 560 130" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- ConcreteBuilder implements Builder -->
  <path d="M 370 260 L 370 180" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Director uses ConcreteBuilder -->
  <path d="M 100 180 Q 100 220 300 260" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />

  <!-- ConcreteBuilder builds Product -->
  <path d="M 460 290 L 560 160" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generatePrototypeSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: PrototypeDiagramData.ar(),
      en: PrototypeDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';
    final String interfaceStyle =
        'font-family="sans-serif" font-size="10" fill="$lineColor" text-anchor="middle" font-style="italic"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 600 340" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="70" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="115" $titleStyle>${data.client}</text>

  <!-- Prototype Interface -->
  <rect x="260" y="30" width="160" height="120" $boxStyle rx="5" />
  <text x="340" y="50" $interfaceStyle>&lt;&lt;Abstract&gt;&gt;</text>
  <text x="340" y="75" $titleStyle>${data.prototype}</text>
  <line x1="260" y1="90" x2="420" y2="90" stroke="$lineColor" stroke-width="1" />
  <text x="340" y="120" $methodStyle>${data.clone}</text>

  <!-- ConcretePrototype1 -->
  <rect x="140" y="220" width="180" height="80" $concreteBoxStyle rx="5" />
  <text x="230" y="265" $titleStyle fill="$concreteTextColor">${data.concretePrototype1}</text>

  <!-- ConcretePrototype2 -->
  <rect x="400" y="220" width="180" height="80" $concreteBoxStyle rx="5" />
  <text x="490" y="265" $titleStyle fill="$concreteTextColor">${data.concretePrototype2}</text>

  <!-- Arrows -->
  <!-- Client to Prototype -->
  <path d="M 160 110 L 260 90" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- ConcretePrototype1 implements Prototype -->
  <path d="M 230 220 L 280 150" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- ConcretePrototype2 implements Prototype -->
  <path d="M 490 220 L 420 150" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Client creates instances -->
  <path d="M 90 150 L 200 220" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
  <path d="M 110 150 L 440 220" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateSingletonSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: SingletonDiagramData.ar(),
      en: SingletonDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String textColor = colors.onSurface.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String memberStyle =
        'font-family="sans-serif" font-size="12" fill="$textColor" text-anchor="start"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 520 240" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="80" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="125" $titleStyle>${data.client}</text>

  <!-- Singleton -->
  <rect x="260" y="20" width="240" height="200" $boxStyle rx="5" />
  <text x="380" y="50" $titleStyle>${data.singleton}</text>
  <line x1="260" y1="65" x2="500" y2="65" stroke="$lineColor" stroke-width="1" />
  <text x="275" y="95" $memberStyle>${data.instance}</text>
  <line x1="260" y1="110" x2="500" y2="110" stroke="$lineColor" stroke-width="1" />
  <text x="275" y="140" $memberStyle>${data.constructor}</text>
  <text x="275" y="165" $memberStyle>${data.getInstance}</text>

  <!-- Arrows -->
  <!-- Client uses Singleton -->
  <path d="M 160 120 L 260 120" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Singleton self-reference -->
  <path d="M 500 100 Q 530 120 500 140" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateObjectPoolSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: ObjectPoolDiagramData.ar(),
      en: ObjectPoolDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="middle"';
    final String labelStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 620 360" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="110" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="155" $titleStyle>${data.client}</text>

  <!-- Pool Manager -->
  <rect x="260" y="50" width="160" height="140" $boxStyle rx="5" />
  <text x="340" y="75" $titleStyle>${data.pool}</text>
  <line x1="260" y1="90" x2="420" y2="90" stroke="$lineColor" stroke-width="1" />
  <text x="340" y="120" $methodStyle>${data.acquire}</text>
  <text x="340" y="145" $methodStyle>${data.release}</text>

  <!-- Available Objects -->
  <rect x="480" y="20" width="120" height="80" $concreteBoxStyle rx="5" />
  <text x="540" y="45" $titleStyle fill="$concreteTextColor">${data.available}</text>
  <circle cx="510" cy="70" r="6" fill="$lineColor" />
  <circle cx="540" cy="70" r="6" fill="$lineColor" />
  <circle cx="570" cy="70" r="6" fill="$lineColor" />

  <!-- In-Use Objects -->
  <rect x="480" y="130" width="120" height="80" $concreteBoxStyle rx="5" />
  <text x="540" y="155" $titleStyle fill="$concreteTextColor">${data.inUse}</text>
  <circle cx="540" cy="185" r="6" fill="${colors.primary.toCssString()}" stroke="$lineColor" stroke-width="2" />

  <!-- Reusable Type -->
  <rect x="480" y="240" width="120" height="80" $concreteBoxStyle rx="5" />
  <text x="540" y="285" $titleStyle fill="$concreteTextColor">${data.reusableObject}</text>

  <!-- Arrows -->
  <!-- Client to Pool -->
  <path d="M 160 150 L 260 120" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Pool to Available -->
  <path d="M 420 90 L 480 60" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
  <text x="445" y="65" $labelStyle>${data.acquire}</text>

  <!-- Pool to In-Use -->
  <path d="M 420 150 L 480 170" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Pool to Reusable (implementation) -->
  <path d="M 420 160 L 540 240" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateLazyInitializationSvg(
    String langCode,
    ColorScheme colors,
  ) {
    final data = const LocV(
      ar: LazyInitializationDiagramData.ar(),
      en: LazyInitializationDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();
    final String decisionColor = colors.primaryContainer.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String decisionStyle =
        'fill="$decisionColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="middle"';
    final String labelStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 680 420" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="110" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="155" $titleStyle>${data.client}</text>

  <!-- LazyHolder -->
  <rect x="260" y="80" width="160" height="120" $boxStyle rx="5" />
  <text x="340" y="110" $titleStyle>${data.lazyHolder}</text>
  <line x1="260" y1="130" x2="420" y2="130" stroke="$lineColor" stroke-width="1" />
  <text x="340" y="160" $methodStyle>${data.getResource}</text>

  <!-- Decision Diamond -->
  <path d="M 460 200 L 510 240 L 460 280 L 410 240 Z" $decisionStyle />
  <text x="460" y="245" $labelStyle>${data.initialized}</text>

  <!-- Create Branch -->
  <rect x="280" y="300" width="120" height="60" $concreteBoxStyle rx="5" />
  <text x="340" y="335" $methodStyle fill="$concreteTextColor">${data.create}</text>

  <!-- Return Cached Branch -->
  <rect x="520" y="300" width="140" height="60" $concreteBoxStyle rx="5" />
  <text x="590" y="335" $methodStyle fill="$concreteTextColor">${data.returnCached}</text>

  <!-- Resource -->
  <rect x="520" y="60" width="140" height="80" $concreteBoxStyle rx="5" />
  <text x="590" y="110" $titleStyle fill="$concreteTextColor">${data.resource}</text>

  <!-- Arrows -->
  <!-- Client to LazyHolder -->
  <path d="M 160 150 L 260 140" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- LazyHolder to Decision -->
  <path d="M 420 140 L 410 240" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Decision No path to Create -->
  <path d="M 410 260 L 340 300" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
  <text x="370" y="280" $labelStyle>${data.no}</text>

  <!-- Decision Yes path to Return Cached -->
  <path d="M 510 260 L 590 300" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
  <text x="530" y="280" $labelStyle>${data.yes}</text>

  <!-- LazyHolder to Resource -->
  <path d="M 420 110 L 520 100" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateMultitonSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: MultitonDiagramData.ar(),
      en: MultitonDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String memberStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="start"';
    final String instanceStyle =
        'font-family="sans-serif" font-size="11" fill="$concreteTextColor" text-anchor="middle"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 660 320" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="90" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="135" $titleStyle>${data.client}</text>

  <!-- Multiton -->
  <rect x="260" y="40" width="220" height="160" $boxStyle rx="5" />
  <text x="370" y="65" $titleStyle>${data.multiton}</text>
  <line x1="260" y1="80" x2="480" y2="80" stroke="$lineColor" stroke-width="1" />
  <text x="275" y="110" $memberStyle>${data.instances}</text>
  <line x1="260" y1="125" x2="480" y2="125" stroke="$lineColor" stroke-width="1" />
  <text x="275" y="155" $memberStyle>${data.getInstance}</text>

  <!-- Instance Registry -->
  <rect x="540" y="20" width="120" height="220" $concreteBoxStyle rx="5" />
  <text x="600" y="45" $titleStyle fill="$concreteTextColor">Registry</text>
  <line x1="540" y1="60" x2="660" y2="60" stroke="$lineColor" stroke-width="1" />

  <rect x="555" y="75" width="90" height="40" $concreteBoxStyle rx="3" />
  <text x="600" y="100" $instanceStyle>${data.instance1}</text>

  <rect x="555" y="130" width="90" height="40" $concreteBoxStyle rx="3" />
  <text x="600" y="155" $instanceStyle>${data.instance2}</text>

  <rect x="555" y="185" width="90" height="40" $concreteBoxStyle rx="3" />
  <text x="600" y="210" $instanceStyle>${data.instance3}</text>

  <!-- Arrows -->
  <!-- Client to Multiton -->
  <path d="M 160 130 L 260 120" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- Multiton to Registry -->
  <path d="M 480 130 L 540 130" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />
</svg>
''';
  }

  static String generateFactoryKitSvg(String langCode, ColorScheme colors) {
    final data = const LocV(
      ar: FactoryKitDiagramData.ar(),
      en: FactoryKitDiagramData.en(),
    )(langCode);

    final bool isRtl = langCode == 'ar';
    final String bgColor = colors.surface.toCssString();
    final String concreteColor = colors.surfaceContainerHighest.toCssString();
    final String lineColor = colors.onSurface.toCssString();
    final String concreteTextColor = colors.onSurfaceVariant.toCssString();
    final String registryColor = colors.primaryContainer.toCssString();

    final String boxStyle =
        'fill="$bgColor" stroke="$lineColor" stroke-width="2"';
    final String concreteBoxStyle =
        'fill="$concreteColor" stroke="$lineColor" stroke-width="2"';
    final String registryStyle =
        'fill="$registryColor" stroke="$lineColor" stroke-width="2"';
    final String titleStyle =
        'font-family="sans-serif" font-size="14" font-weight="bold" fill="$lineColor" text-anchor="middle"';
    final String methodStyle =
        'font-family="sans-serif" font-size="12" fill="$lineColor" text-anchor="middle"';
    final String labelStyle =
        'font-family="sans-serif" font-size="11" fill="$lineColor" text-anchor="middle"';
    final String interfaceStyle =
        'font-family="sans-serif" font-size="10" fill="$lineColor" text-anchor="middle" font-style="italic"';

    return '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 780 400" direction="${isRtl ? 'rtl' : 'ltr'}">
  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="$lineColor" />
    </marker>
  </defs>

  <!-- Client -->
  <rect x="20" y="110" width="140" height="80" $boxStyle rx="5" />
  <text x="90" y="155" $titleStyle>${data.client}</text>

  <!-- FactoryKit -->
  <rect x="260" y="50" width="200" height="160" $boxStyle rx="5" />
  <text x="360" y="80" $titleStyle>${data.factoryKit}</text>
  <line x1="260" y1="100" x2="460" y2="100" stroke="$lineColor" stroke-width="1" />
  <text x="360" y="130" $methodStyle>${data.register}</text>
  <text x="360" y="160" $methodStyle>${data.create}</text>

  <!-- Product Interface -->
  <rect x="540" y="70" width="140" height="80" $boxStyle rx="5" />
  <text x="610" y="90" $interfaceStyle>&lt;&lt;Interface&gt;&gt;</text>
  <text x="610" y="115" $titleStyle>${data.product}</text>

  <!-- Registry -->
  <rect x="280" y="280" width="160" height="100" $registryStyle rx="5" />
  <text x="360" y="310" $titleStyle>${data.registry}</text>
  <line x1="280" y1="330" x2="440" y2="330" stroke="$lineColor" stroke-width="1" />
  <text x="360" y="355" $labelStyle>${data.factory1}</text>
  <text x="360" y="375" $labelStyle>${data.factory2}</text>

  <!-- Product1 -->
  <rect x="540" y="260" width="100" height="60" $concreteBoxStyle rx="5" />
  <text x="590" y="295" $titleStyle fill="$concreteTextColor">${data.product1}</text>

  <!-- Product2 -->
  <rect x="680" y="260" width="100" height="60" $concreteBoxStyle rx="5" />
  <text x="730" y="295" $titleStyle fill="$concreteTextColor">${data.product2}</text>

  <!-- Arrows -->
  <!-- Client to FactoryKit -->
  <path d="M 160 150 L 260 130" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- FactoryKit to Product Interface -->
  <path d="M 460 110 L 540 110" stroke="$lineColor" stroke-width="2" fill="none" marker-end="url(#arrowhead)" />

  <!-- FactoryKit to Registry -->
  <path d="M 360 210 L 360 280" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Product1 implements Product -->
  <path d="M 590 260 L 610 150" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Product2 implements Product -->
  <path d="M 730 260 L 700 150" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="5,5" marker-end="url(#arrowhead)" />

  <!-- Registry creates Products -->
  <path d="M 400 320 L 540 290" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
  <path d="M 440 320 L 680 290" stroke="$lineColor" stroke-width="2" fill="none" stroke-dasharray="3,3" marker-end="url(#arrowhead)" />
</svg>
''';
  }
}
