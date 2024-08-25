//Defining Product:
abstract class Document {
  read();
  write();
  save();
}

abstract class Presentation {
  start();
  present();
  end();
}

// Concrete Product:
class HtmlDocument implements Document {
  @override
  read() {
    print("Read HTML document");
  }

  @override
  save() {
    print("Save HTML document");
  }

  @override
  write() {
    print("Write HTML document");
  }
}

class PDFDocument implements Document {
  @override
  read() {
    print("Read PDF document");
  }

  @override
  save() {
    print("Save PDF document");
  }

  @override
  write() {
    print("Write PDF document");
  }
}

// concrete presentation:
class HtmlPresentation implements Presentation {
  @override
  end() {
    print("End HTML presentation");
  }

  @override
  present() {
    print("showing HTML presentation");
  }

  @override
  start() {
    print("Start HTML presentation");
  }
}

class PDFPresentation implements Presentation {
  @override
  end() {
    print("End PDF presentation");
  }

  @override
  present() {
    print("showing PDF presentation");
  }

  @override
  start() {
    print("Start PDF presentation");
  }
}

// Factory Method:
abstract class DocumentFactory {
  Document createDocument();
  Presentation showPresentation();
}

// Concrete factory classes:

class HtmlDocumentFactory implements DocumentFactory {
  @override
  createDocument() {
    return HtmlDocument();
  }

  @override
  Presentation showPresentation() {
    return HtmlPresentation();
  }
}

class PDFDocumentFactory implements DocumentFactory {
  @override
  createDocument() {
    return PDFDocument();
  }

  @override
  Presentation showPresentation() {
    return PDFPresentation();
  }
}

// Client Side:

void main() {
  DocumentFactory factory = HtmlDocumentFactory();
  Document htmlDoc = factory.createDocument();
  htmlDoc.read();
  htmlDoc.save();
  Presentation htmlPresentation = factory.showPresentation();
  htmlPresentation.start();
  htmlPresentation.present();
  htmlPresentation.end();

  print("\n");

  DocumentFactory factory2 = PDFDocumentFactory();
  Document pdfDoc = factory2.createDocument();
  pdfDoc.read();
  pdfDoc.save();
  Presentation pdfPresentation = PDFPresentation();
  pdfPresentation.start();
  pdfPresentation.present();
  pdfPresentation.end();
}
