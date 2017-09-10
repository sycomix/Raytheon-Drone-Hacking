.class public Lcom/google/gdata/wireformats/XmlWireFormat;
.super Lcom/google/gdata/wireformats/WireFormat;
.source "XmlWireFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "xml"

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/WireFormat;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public createGenerator(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)Lcom/google/gdata/wireformats/WireFormatGenerator;
    .locals 1
    .param p1, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p2, "w"    # Ljava/io/Writer;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .param p4, "prettyPrint"    # Z

    .prologue
    .line 39
    new-instance v0, Lcom/google/gdata/wireformats/XmlGenerator;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)V

    return-object v0
.end method

.method public createParser(Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/data/XmlEventSource;)Lcom/google/gdata/wireformats/WireFormatParser;
    .locals 1
    .param p1, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p2, "source"    # Lcom/google/gdata/data/XmlEventSource;

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/wireformats/XmlParser;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Lcom/google/gdata/data/XmlEventSource;)V

    return-object v0
.end method

.method public createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;
    .locals 1
    .param p1, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p2, "r"    # Ljava/io/Reader;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/wireformats/XmlParser;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/XmlParser;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    return-object v0
.end method
