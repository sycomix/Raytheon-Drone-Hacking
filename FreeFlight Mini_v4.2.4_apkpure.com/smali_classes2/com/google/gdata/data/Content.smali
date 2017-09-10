.class public abstract Lcom/google/gdata/data/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/google/gdata/data/IContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Content$ChildHandlerInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 9
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v7, ""

    const-string v8, "type"

    invoke-interface {p1, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "type":Ljava/lang/String;
    new-instance v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;

    invoke-direct {v1}, Lcom/google/gdata/data/Content$ChildHandlerInfo;-><init>()V

    .line 89
    .local v1, "childHandlerInfo":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    const-string v7, ""

    const-string v8, "src"

    invoke-interface {p1, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "src":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 93
    if-eqz v6, :cond_0

    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "text/html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    :cond_0
    new-instance v5, Lcom/google/gdata/data/TextContent;

    invoke-direct {v5}, Lcom/google/gdata/data/TextContent;-><init>()V

    .line 101
    .local v5, "tc":Lcom/google/gdata/data/TextContent;
    invoke-static {p1}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 103
    .local v0, "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v7, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v5, v7}, Lcom/google/gdata/data/TextContent;->setContent(Lcom/google/gdata/data/TextConstruct;)V

    .line 104
    iget-object v7, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    iput-object v7, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 105
    iput-object v5, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    .line 119
    .end local v0    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    .end local v5    # "tc":Lcom/google/gdata/data/TextContent;
    :goto_0
    return-object v1

    .line 109
    :cond_1
    new-instance v2, Lcom/google/gdata/data/OtherContent;

    invoke-direct {v2}, Lcom/google/gdata/data/OtherContent;-><init>()V

    .line 110
    .local v2, "oc":Lcom/google/gdata/data/OtherContent;
    new-instance v7, Lcom/google/gdata/data/OtherContent$AtomHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2, p0, p1}, Lcom/google/gdata/data/OtherContent$AtomHandler;-><init>(Lcom/google/gdata/data/OtherContent;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    iput-object v7, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 111
    iput-object v2, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    goto :goto_0

    .line 114
    .end local v2    # "oc":Lcom/google/gdata/data/OtherContent;
    :cond_2
    new-instance v3, Lcom/google/gdata/data/OutOfLineContent;

    invoke-direct {v3}, Lcom/google/gdata/data/OutOfLineContent;-><init>()V

    .line 115
    .local v3, "oolc":Lcom/google/gdata/data/OutOfLineContent;
    new-instance v7, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v3}, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;-><init>(Lcom/google/gdata/data/OutOfLineContent;)V

    iput-object v7, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 116
    iput-object v3, v1, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    goto :goto_0
.end method


# virtual methods
.method public abstract generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method
