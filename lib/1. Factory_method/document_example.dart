//Defining Product:
abstract class Document {
  read();
  write();
  save();
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

// Factory Method:
abstract class DocumentFactory {
  Document createDocument();
}

// Concrete factory classes:

class HtmlDocumentFactory implements DocumentFactory {
  @override
  createDocument() {
    return HtmlDocument();
  }
}

class PDFDocumentFactory implements DocumentFactory {
  @override
  createDocument() {
    return PDFDocument();
  }
}

// Client Side:

void main() {
  DocumentFactory factory = HtmlDocumentFactory();
  Document htmlDoc = factory.createDocument();
  htmlDoc.read();
  htmlDoc.save();

  DocumentFactory factory2 = PDFDocumentFactory();
  Document pdfDoc = factory2.createDocument();
  pdfDoc.read();
  pdfDoc.save();
}
