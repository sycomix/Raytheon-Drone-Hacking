.class public Lcom/google/gdata/model/atom/OutOfLineContent;
.super Lcom/google/gdata/model/atom/Content;
.source "OutOfLineContent.java"

# interfaces
.implements Lcom/google/gdata/data/IOutOfLineContent;
.implements Lcom/google/gdata/data/Reference;


# static fields
.field public static final ETAG:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/OutOfLineContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "out-of-line"

.field public static final LENGTH:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/OutOfLineContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 52
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "length"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->LENGTH:Lcom/google/gdata/model/AttributeKey;

    .line 60
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "etag"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->ETAG:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Content;)V
    .locals 1
    .param p1, "content"    # Lcom/google/gdata/model/atom/Content;

    .prologue
    .line 96
    sget-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 97
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 67
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Content;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 74
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 75
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/atom/Content;->SRC:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 76
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->LENGTH:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 77
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 80
    sget-object v1, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v2, "out-of-line"

    sget-object v3, Lcom/google/gdata/model/atom/OutOfLineContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->SRC:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/OutOfLineContent;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 170
    .local v0, "uri":Ljava/net/URI;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLength()J
    .locals 4

    .prologue
    .line 192
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->LENGTH:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/OutOfLineContent;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 193
    .local v0, "length":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x7

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OutOfLineContent;->getSrc()Ljava/net/URI;

    move-result-object v0

    .line 129
    .local v0, "uri":Ljava/net/URI;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 211
    sget-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/OutOfLineContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 212
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 4
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    sget-object v2, Lcom/google/gdata/model/atom/OutOfLineContent;->SRC:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/google/gdata/model/atom/OutOfLineContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 189
    return-void

    .line 185
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLength(J)V
    .locals 5
    .param p1, "length"    # J

    .prologue
    .line 158
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->LENGTH:Lcom/google/gdata/model/AttributeKey;

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 159
    return-void

    .line 158
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public setMimeType(Lcom/google/gdata/util/ContentType;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 116
    sget-object v1, Lcom/google/gdata/model/atom/OutOfLineContent;->TYPE:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atom/OutOfLineContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 117
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSrc(Ljava/net/URI;)V
    .locals 1
    .param p1, "v"    # Ljava/net/URI;

    .prologue
    .line 153
    sget-object v0, Lcom/google/gdata/model/atom/OutOfLineContent;->SRC:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/OutOfLineContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 154
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/OutOfLineContent;->setSrc(Ljava/net/URI;)V

    .line 149
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
