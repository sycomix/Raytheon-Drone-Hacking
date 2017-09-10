.class public Lcom/google/gdata/wireformats/XmlGenerator;
.super Ljava/lang/Object;
.source "XmlGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/WireFormatGenerator;
.implements Lcom/google/gdata/model/ElementVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;,
        Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    }
.end annotation


# static fields
.field private static final DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

.field private static final USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;


# instance fields
.field private final defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field protected final rootMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field protected final xw:Lcom/google/gdata/util/common/xml/XmlWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "__USE_ROOT_ELEMENT_NAMESPACE__"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 230
    new-instance v0, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;-><init>()V

    sput-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)V
    .locals 6
    .param p1, "props"    # Lcom/google/gdata/wireformats/StreamProperties;
    .param p2, "w"    # Ljava/io/Writer;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .param p4, "prettyPrint"    # Z

    .prologue
    .line 80
    sget-object v5, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/wireformats/XmlGenerator;-><init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;ZLcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;ZLcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 4
    .param p1, "props"    # Lcom/google/gdata/wireformats/StreamProperties;
    .param p2, "w"    # Ljava/io/Writer;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .param p4, "prettyPrint"    # Z
    .param p5, "defaultNamespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v2, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 90
    .local v0, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    if-eqz p4, :cond_0

    .line 91
    sget-object v2, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/XmlGenerator;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 101
    iput-object p5, p0, Lcom/google/gdata/wireformats/XmlGenerator;->defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to create XML generator"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1}, Lcom/google/gdata/model/ElementMetadata;->getProperties()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/wireformats/XmlWireFormatProperties;

    .line 271
    .local v1, "xmlProperties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/google/gdata/wireformats/XmlWireFormatProperties;->getElementGenerator()Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 273
    .local v0, "elementGenerator":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    if-eqz v0, :cond_0

    .line 278
    .end local v0    # "elementGenerator":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    .end local v1    # "xmlProperties":Lcom/google/gdata/wireformats/XmlWireFormatProperties;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gdata/wireformats/XmlGenerator;->DEFAULT_GENERATOR:Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    goto :goto_0
.end method

.method private setRootNamespace(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;)V
    .locals 2
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlGenerator;->defaultNamespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 306
    .local v0, "rootNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    sget-object v1, Lcom/google/gdata/wireformats/XmlGenerator;->USE_ROOT_ELEMENT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-ne v0, v1, :cond_0

    .line 307
    if-eqz p1, :cond_2

    .line 308
    invoke-interface {p1}, Lcom/google/gdata/model/ElementMetadata;->getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 313
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 316
    :cond_1
    return-void

    .line 310
    :cond_2
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;)V
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/gdata/wireformats/XmlGenerator;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/wireformats/XmlGenerator;->generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 236
    return-void
.end method

.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 5
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Element key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not match metadata key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/model/Element;->visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/ElementMetadata;)V
    :try_end_0
    .catch Lcom/google/gdata/model/ElementVisitor$StoppedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "se":Lcom/google/gdata/model/ElementVisitor$StoppedException;
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementVisitor$StoppedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 251
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 252
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 254
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public visit(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 3
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 284
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p1, :cond_0

    .line 285
    :try_start_0
    invoke-direct {p0, p3, p2}, Lcom/google/gdata/wireformats/XmlGenerator;->setRootNamespace(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;)V

    .line 287
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lcom/google/gdata/model/ElementMetadata;->isSelected(Lcom/google/gdata/model/Element;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/gdata/wireformats/XmlGenerator;->getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 289
    .local v0, "gen":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 294
    .end local v0    # "gen":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    invoke-direct {v2, v1}, Lcom/google/gdata/model/ElementVisitor$StoppedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 294
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public visitComplete(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 321
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3, p2}, Lcom/google/gdata/model/ElementMetadata;->isSelected(Lcom/google/gdata/model/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/gdata/wireformats/XmlGenerator;->getElementGenerator(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;

    move-result-object v0

    .line 323
    .local v0, "elementGenerator":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v2, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 324
    iget-object v2, p0, Lcom/google/gdata/wireformats/XmlGenerator;->xw:Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-interface {v0, v2, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;->endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "elementGenerator":Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;
    :cond_1
    return-void

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    invoke-direct {v2, v1}, Lcom/google/gdata/model/ElementVisitor$StoppedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
