.class public Lcom/google/gdata/model/atom/OtherContent;
.super Lcom/google/gdata/model/atom/Content;
.source "OtherContent.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/OtherContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "other"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/OtherContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 71
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
    .line 88
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Content;)V
    .locals 1
    .param p1, "content"    # Lcom/google/gdata/model/atom/Content;

    .prologue
    .line 79
    sget-object v0, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 80
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 53
    sget-object v1, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Content;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 59
    sget-object v1, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 60
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 61
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 63
    sget-object v1, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v2, "other"

    sget-object v3, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getText()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/gdata/util/common/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/google/gdata/util/common/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/google/gdata/util/common/util/Base64DecoderException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value was not base64 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/google/gdata/model/atom/OtherContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/OtherContent;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getXml()Lcom/google/gdata/util/XmlBlob;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getXmlContent()Lcom/google/gdata/model/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x5

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getMimeType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x4

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getXml()Lcom/google/gdata/util/XmlBlob;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlContent()Lcom/google/gdata/model/Element;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getElementIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "v"    # [B

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/OtherContent;->setText(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setMimeType(Lcom/google/gdata/util/ContentType;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 105
    sget-object v0, Lcom/google/gdata/model/atom/OtherContent;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/OtherContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 106
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/OtherContent;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 145
    return-void
.end method

.method public setXml(Lcom/google/gdata/util/XmlBlob;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/util/XmlBlob;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setXmlContent(Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p1, "content"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/OtherContent;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 135
    return-void
.end method

.method protected validate(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)V
    .locals 3
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/atom/Content;->validate(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->hasTextValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 169
    .local v0, "maximumChildren":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getElementCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content cannot contain more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " child elements, but contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/OtherContent;->getElementCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void

    .line 167
    .end local v0    # "maximumChildren":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
