.class public abstract Lcom/google/gdata/wireformats/output/XmlGenerator;
.super Lcom/google/gdata/wireformats/output/CharacterGenerator;
.source "XmlGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/output/CharacterGenerator",
        "<TS;>;"
    }
.end annotation


# static fields
.field protected static final XML_CONTENT_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/util/ContentType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_XML:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    .local p0, "this":Lcom/google/gdata/wireformats/output/XmlGenerator;, "Lcom/google/gdata/wireformats/output/XmlGenerator<TS;>;"
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/CharacterGenerator;-><init>()V

    return-void
.end method

.method protected static varargs createMatchingXmlList([Lcom/google/gdata/util/ContentType;)Ljava/util/List;
    .locals 7
    .param p0, "types"    # [Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/util/ContentType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    sget-object v6, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v4, "matchingTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/ContentType;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/google/gdata/util/ContentType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 81
    .local v1, "contentType":Lcom/google/gdata/util/ContentType;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "contentType":Lcom/google/gdata/util/ContentType;
    :cond_0
    sget-object v5, Lcom/google/gdata/wireformats/output/XmlGenerator;->XML_CONTENT_TYPES:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/google/gdata/wireformats/output/XmlGenerator;, "Lcom/google/gdata/wireformats/output/XmlGenerator<TS;>;"
    .local p3, "source":Ljava/lang/Object;, "TS;"
    invoke-static {p2}, Lcom/google/gdata/wireformats/output/XmlGenerator;->getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/wireformats/output/XmlGenerator;->getXmlWriter(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter;

    move-result-object v1

    .line 96
    .local v1, "xw":Lcom/google/gdata/util/common/xml/XmlWriter;
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/gdata/wireformats/output/XmlGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 98
    return-void
.end method

.method public abstract generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getXmlWriter(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter;
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/gdata/wireformats/output/XmlGenerator;, "Lcom/google/gdata/wireformats/output/XmlGenerator<TS;>;"
    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 65
    .local v0, "writerFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/output/XmlGenerator;->usePrettyPrint(Lcom/google/gdata/wireformats/output/OutputProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    return-object v1
.end method
