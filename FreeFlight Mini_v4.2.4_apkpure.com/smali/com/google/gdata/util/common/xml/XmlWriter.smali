.class public Lcom/google/gdata/util/common/xml/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/common/xml/XmlWriter$Element;,
        Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;,
        Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;,
        Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INDENTATION_UNIT:Ljava/lang/String; = "\t"


# instance fields
.field private defaultNamespace:Ljava/lang/String;

.field private final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Element;",
            ">;"
        }
    .end annotation
.end field

.field protected encoding:Ljava/lang/String;

.field protected final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;",
            ">;"
        }
    .end annotation
.end field

.field private nextDefaultNamespace:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/common/xml/XmlWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .param p1, "w"    # Ljava/io/Writer;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "f":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    .line 369
    if-eqz p2, :cond_0

    .end local p2    # "f":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    :goto_0
    iput-object p2, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->flags:Ljava/util/Set;

    .line 370
    iput-object p3, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->encoding:Ljava/lang/String;

    .line 378
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    .line 379
    invoke-virtual {p0, v2, v2, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->createElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 380
    .local v0, "rootElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->openTagEnded:Z

    .line 381
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void

    .line 369
    .end local v0    # "rootElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .restart local p2    # "f":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    :cond_0
    const-class v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "standalone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "f":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    .line 350
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->standalone:Ljava/lang/Boolean;

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "includeHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    sget-object v0, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;Ljava/util/Set;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private checkNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "namespaceUri"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v4, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 692
    iget-object v4, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    .line 694
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget-object v4, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 695
    .local v3, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v4, v3, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 696
    iget-object v4, v3, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    .line 700
    .end local v0    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :goto_1
    return-object v4

    .line 690
    .restart local v0    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 700
    .end local v0    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private ensureUniqueNamespaceAlias(Lcom/google/gdata/util/common/xml/XmlWriter$Element;Lcom/google/gdata/util/common/xml/XmlNamespace;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 7
    .param p1, "element"    # Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .param p2, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 780
    const/4 v3, 0x0

    .line 783
    .local v3, "serial":I
    :cond_0
    const/4 v4, 0x1

    .line 784
    .local v4, "unique":Z
    iget-object v5, p1, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 785
    .local v2, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v5, p2, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 786
    const/4 v4, 0x0

    .line 787
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local p2    # "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .local v1, "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    move-object p2, v1

    .line 792
    .end local v1    # "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v2    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .restart local p2    # "namespace":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_2
    if-eqz v4, :cond_0

    .line 793
    return-object p2
.end method

.method private getIndentationLevel()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private isPrettyPrintingEnabled()Z
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->flags:Ljava/util/Set;

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->PRETTY_PRINT:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->unformattedChildren:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeIndentation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->getIndentationLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeUnitsOfIndentation(I)V

    .line 729
    return-void
.end method

.method private writeNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method private writeUnitsOfIndentation(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    :goto_0
    if-lez p1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 735
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;Z)V

    .line 981
    return-void
.end method

.method public characters(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "useCData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    if-nez p1, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 996
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endOpenTag()V

    .line 997
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->unformattedChildren:Z

    .line 999
    if-eqz p2, :cond_1

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->xmlCDataEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "escaped":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    .end local v0    # "escaped":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/google/gdata/util/common/base/StringUtil;->xmlContentEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "escaped":Ljava/lang/String;
    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 422
    return-void
.end method

.method protected createElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .locals 1
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "nsUri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/util/common/xml/XmlWriter$Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .locals 2

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-object v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/util/EmptyStackException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 617
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget-object v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeCloseTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->enclosingDefaultNamespace:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->defaultNamespace:Ljava/lang/String;

    .line 619
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 622
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->shouldWriteHeaderAndFooter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeFooter()V

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeEndOutput()V

    .line 629
    :cond_1
    return-void
.end method

.method public endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 607
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    sget-boolean v1, Lcom/google/gdata/util/common/xml/XmlWriter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 608
    :cond_0
    sget-boolean v1, Lcom/google/gdata/util/common/xml/XmlWriter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 609
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 610
    return-void
.end method

.method protected endOpenTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 592
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget-boolean v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->openTagEnded:Z

    if-nez v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeOpenTagEnd()V

    .line 594
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->openTagEnded:Z

    .line 596
    :cond_0
    return-void
.end method

.method public endRepeatingElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    .line 662
    return-void
.end method

.method protected ensureNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)Ljava/lang/String;
    .locals 4
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 752
    iget-object v2, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->defaultNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    const/4 v0, 0x0

    .line 766
    :cond_0
    :goto_0
    return-object v0

    .line 756
    :cond_1
    iget-object v2, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->checkNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v1

    .line 761
    .local v1, "current":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    invoke-direct {p0, v1, p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->ensureUniqueNamespaceAlias(Lcom/google/gdata/util/common/xml/XmlWriter$Element;Lcom/google/gdata/util/common/xml/XmlNamespace;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object p1

    .line 762
    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->addNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 763
    iget-object v0, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 431
    return-void
.end method

.method protected getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nsAlias"    # Ljava/lang/String;

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 804
    iget-object v4, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->defaultNamespace:Ljava/lang/String;

    .line 815
    :goto_0
    return-object v4

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 808
    iget-object v4, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    .line 809
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget-object v4, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 810
    .local v3, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 807
    .end local v3    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 815
    .end local v0    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public innerXml(Ljava/lang/String;)V
    .locals 0
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeUnescaped(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    return-object v0
.end method

.method public setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 2
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 440
    iget-object v0, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->defaultNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->nextDefaultNamespace:Ljava/lang/String;

    .line 443
    :cond_0
    return-void
.end method

.method protected shouldWriteHeaderAndFooter()Z
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->flags:Ljava/util/Set;

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->standalone:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    .local p3, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 677
    invoke-virtual {p0, p4}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public simpleElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 10
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .local p4, "namespaceDecls":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    const/4 v9, 0x0

    .line 498
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeBeginOutput()V

    .line 502
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->shouldWriteHeaderAndFooter()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 503
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeHeader(Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endOpenTag()V

    .line 510
    if-eqz p1, :cond_3

    .line 511
    iget-object v6, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->createElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v2

    .line 516
    .local v2, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    :goto_0
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v5

    .line 517
    .local v5, "parentElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    if-eqz v5, :cond_1

    .line 518
    iget-object v6, v5, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->xmlLang:Ljava/lang/String;

    iput-object v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->xmlLang:Ljava/lang/String;

    .line 522
    iget-boolean v6, v5, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->unformattedChildren:Z

    iput-boolean v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->unformattedChildren:Z

    .line 524
    iget v6, v5, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 525
    iget v6, v5, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    iput v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingIndex:I

    .line 529
    :cond_1
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->elementStack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->nextDefaultNamespace:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 532
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->nextDefaultNamespace:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "defaultNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->nextDefaultNamespace:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->defaultNamespace:Ljava/lang/String;

    .line 534
    invoke-virtual {v2, v1}, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->addNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 535
    iput-object v9, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->nextDefaultNamespace:Ljava/lang/String;

    .line 538
    .end local v1    # "defaultNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_2
    if-eqz p4, :cond_4

    .line 539
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 540
    .local v4, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    invoke-virtual {p0, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->ensureNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)Ljava/lang/String;

    goto :goto_1

    .line 513
    .end local v2    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v5    # "parentElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    :cond_3
    invoke-virtual {p0, v9, v9, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->createElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v2

    .restart local v2    # "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    goto :goto_0

    .line 544
    .restart local v5    # "parentElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    :cond_4
    if-eqz p1, :cond_5

    .line 545
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->ensureNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsAlias:Ljava/lang/String;

    .line 548
    :cond_5
    iget-object v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsAlias:Ljava/lang/String;

    invoke-virtual {p0, v6, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeOpenTagStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->nsDecls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 551
    .restart local v4    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v6, v4, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 552
    const-string/jumbo v6, "xmlns"

    iget-object v7, v4, Lcom/google/gdata/util/common/xml/XmlNamespace;->alias:Ljava/lang/String;

    iget-object v8, v4, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 554
    :cond_6
    const-string/jumbo v6, "xmlns"

    iget-object v7, v4, Lcom/google/gdata/util/common/xml/XmlNamespace;->uri:Ljava/lang/String;

    invoke-virtual {p0, v9, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 558
    .end local v4    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_7
    if-eqz p3, :cond_a

    .line 559
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    .line 561
    .local v0, "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    iget-object v6, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->name:Ljava/lang/String;

    const-string v7, "lang"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "xml"

    iget-object v7, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->nsAlias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 562
    iget-object v6, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->value:Ljava/lang/String;

    iget-object v7, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->xmlLang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 565
    iget-object v6, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->value:Ljava/lang/String;

    iput-object v6, v2, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->xmlLang:Ljava/lang/String;

    .line 568
    :cond_9
    iget-object v6, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->nsAlias:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->name:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;->value:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 572
    .end local v0    # "attr":Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;
    :cond_a
    iget-object v6, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->flags:Ljava/util/Set;

    sget-object v7, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->EXPAND_EMPTY:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 573
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endOpenTag()V

    .line 575
    :cond_b
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 482
    return-void
.end method

.method public startRepeatingElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 649
    .local v0, "currentElement":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 650
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Existing repeating element is active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->repeatingCount:I

    .line 653
    return-void
.end method

.method protected writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method protected writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x27

    .line 963
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeQualifiedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 966
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 967
    if-eqz p3, :cond_0

    .line 968
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-static {p3}, Lcom/google/gdata/util/common/base/StringUtil;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 971
    return-void
.end method

.method protected writeBeginOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    return-void
.end method

.method protected writeCloseTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    .line 924
    .local v0, "element":Lcom/google/gdata/util/common/xml/XmlWriter$Element;
    iget-boolean v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->openTagEnded:Z

    if-eqz v1, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->isPrettyPrintingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeNewline()V

    .line 930
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeIndentation()V

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeQualifiedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEndOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method protected writeFooter()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    return-void
.end method

.method protected writeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 844
    const-string/jumbo v0, "version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    if-eqz p1, :cond_0

    .line 846
    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->standalone:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 849
    const-string v1, "standalone"

    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->standalone:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "yes"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 852
    return-void

    .line 849
    :cond_2
    const-string v0, "no"

    goto :goto_0
.end method

.method protected writeOpenTagEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 911
    return-void
.end method

.method protected writeOpenTagStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->isPrettyPrintingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->getIndentationLevel()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->flags:Ljava/util/Set;

    sget-object v1, Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;->WRITE_HEADER:Lcom/google/gdata/util/common/xml/XmlWriter$WriterFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    :cond_0
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeNewline()V

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeIndentation()V

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 900
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->writeQualifiedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method protected writeQualifiedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nsAlias"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public writeUnescaped(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endOpenTag()V

    .line 1029
    invoke-virtual {p0}, Lcom/google/gdata/util/common/xml/XmlWriter;->currentElement()Lcom/google/gdata/util/common/xml/XmlWriter$Element;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gdata/util/common/xml/XmlWriter$Element;->unformattedChildren:Z

    .line 1030
    iget-object v0, p0, Lcom/google/gdata/util/common/xml/XmlWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1031
    return-void
.end method
