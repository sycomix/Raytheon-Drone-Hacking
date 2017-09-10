.class public Lcom/google/gdata/model/atom/TextContent;
.super Lcom/google/gdata/model/atom/Content;
.source "TextContent.java"

# interfaces
.implements Lcom/google/gdata/data/ITextContent;
.implements Lcom/google/gdata/data/ITextConstruct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/atom/TextContent$1;,
        Lcom/google/gdata/model/atom/TextContent$TextContentValidator;
    }
.end annotation


# static fields
.field public static final CONSTRUCT:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIV:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/XmlBlob;",
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
            "Lcom/google/gdata/model/atom/TextContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "text"

.field private static final TYPE_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_TYPE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/TextContent;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    .line 60
    sget-object v0, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/atom/TextContent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 66
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->xhtmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "div"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/XmlBlob;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    .line 91
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "plain"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "html"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "text/html"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "xhtml"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/TextContent;->TYPE_MAP:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 235
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
    .line 243
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 244
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Content;)V
    .locals 0
    .param p2, "content"    # Lcom/google/gdata/model/atom/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/atom/Content;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Content;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 254
    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/model/Element;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/gdata/model/atom/TextContent;->getType(Lcom/google/gdata/model/Element;)I

    move-result v0

    return v0
.end method

.method public static create(ILjava/lang/String;Lcom/google/gdata/model/XmlBlob;)Lcom/google/gdata/model/atom/TextContent;
    .locals 3
    .param p0, "type"    # I
    .param p1, "textOrHtml"    # Ljava/lang/String;
    .param p2, "xhtml"    # Lcom/google/gdata/model/XmlBlob;

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    invoke-static {p1}, Lcom/google/gdata/model/atom/TextContent;->plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 180
    :pswitch_1
    invoke-static {p1}, Lcom/google/gdata/model/atom/TextContent;->html(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_2
    invoke-static {p2}, Lcom/google/gdata/model/atom/TextContent;->xhtml(Lcom/google/gdata/model/XmlBlob;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getType(Lcom/google/gdata/model/Element;)I
    .locals 3
    .param p0, "e"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 225
    sget-object v2, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v2}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 227
    .local v1, "typeVal":Ljava/lang/Integer;
    if-nez v1, :cond_1

    const/4 v2, -0x1

    :goto_1
    return v2

    .line 226
    .end local v1    # "typeVal":Ljava/lang/Integer;
    :cond_0
    sget-object v2, Lcom/google/gdata/model/atom/TextContent;->TYPE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 227
    .restart local v1    # "typeVal":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public static html(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lcom/google/gdata/model/atom/TextContent;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/TextContent;-><init>()V

    .line 204
    .local v0, "content":Lcom/google/gdata/model/atom/TextContent;
    invoke-virtual {v0, p0}, Lcom/google/gdata/model/atom/TextContent;->setHtml(Ljava/lang/String;)V

    .line 205
    return-object v0
.end method

.method public static plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Lcom/google/gdata/model/atom/TextContent;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/TextContent;-><init>()V

    .line 195
    .local v0, "content":Lcom/google/gdata/model/atom/TextContent;
    invoke-virtual {v0, p0}, Lcom/google/gdata/model/atom/TextContent;->setText(Ljava/lang/String;)V

    .line 196
    return-object v0
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 5
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 73
    sget-object v2, Lcom/google/gdata/model/atom/TextContent;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v2}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Content;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 79
    sget-object v2, Lcom/google/gdata/model/atom/TextContent;->CONSTRUCT:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v2

    new-instance v3, Lcom/google/gdata/model/atom/TextContent$TextContentValidator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/gdata/model/atom/TextContent$TextContentValidator;-><init>(Lcom/google/gdata/model/atom/TextContent$1;)V

    invoke-interface {v2, v3}, Lcom/google/gdata/model/ElementCreator;->setValidator(Lcom/google/gdata/model/ElementValidator;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    .line 81
    .local v1, "constructBuilder":Lcom/google/gdata/model/ElementCreator;
    sget-object v2, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 83
    sget-object v2, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 84
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v2, Lcom/google/gdata/model/atom/Content;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v3, "text"

    sget-object v4, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method

.method public static xhtml(Lcom/google/gdata/model/XmlBlob;)Lcom/google/gdata/model/atom/TextContent;
    .locals 1
    .param p0, "div"    # Lcom/google/gdata/model/XmlBlob;

    .prologue
    .line 212
    new-instance v0, Lcom/google/gdata/model/atom/TextContent;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/TextContent;-><init>()V

    .line 213
    .local v0, "content":Lcom/google/gdata/model/atom/TextContent;
    invoke-virtual {v0, p0}, Lcom/google/gdata/model/atom/TextContent;->setXhtml(Lcom/google/gdata/model/XmlBlob;)V

    .line 214
    return-object v0
.end method


# virtual methods
.method public getContent()Lcom/google/gdata/data/ITextConstruct;
    .locals 0

    .prologue
    .line 388
    return-object p0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be possible, getType can only return TEXT, HTML, or XHTML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getXhtml()Lcom/google/gdata/model/XmlBlob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/model/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/html/HtmlToText;->htmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/TextContent;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 264
    invoke-static {p0}, Lcom/google/gdata/model/atom/TextContent;->getType(Lcom/google/gdata/model/Element;)I

    move-result v0

    .line 265
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .end local v0    # "type":I
    :cond_0
    return v0
.end method

.method public getXhtml()Lcom/google/gdata/model/XmlBlob;
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 323
    const/4 v0, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    sget-object v1, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/TextContent;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/XmlBlob;

    .line 327
    .local v0, "div":Lcom/google/gdata/model/XmlBlob;
    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/google/gdata/model/XmlBlob;

    .end local v0    # "div":Lcom/google/gdata/model/XmlBlob;
    sget-object v1, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, v1}, Lcom/google/gdata/model/XmlBlob;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 329
    .restart local v0    # "div":Lcom/google/gdata/model/XmlBlob;
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/TextContent;->setXhtml(Lcom/google/gdata/model/XmlBlob;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getElementCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 4
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v3, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getType()I

    move-result v0

    .line 373
    .local v0, "type":I
    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/client/Service$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isBefore(Lcom/google/gdata/util/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/TextContent;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 376
    sget-object v1, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    const-string v2, "text"

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/TextContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 378
    :cond_0
    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/TextContent;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 380
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/TextContent;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 384
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/atom/Content;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v1

    return-object v1
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-object v0, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    const-string v1, "html"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/TextContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/TextContent;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 353
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isBefore(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    const-string v1, "text"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/TextContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 343
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/TextContent;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 344
    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/TextContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method public setXhtml(Lcom/google/gdata/model/XmlBlob;)V
    .locals 2
    .param p1, "div"    # Lcom/google/gdata/model/XmlBlob;

    .prologue
    .line 360
    sget-object v0, Lcom/google/gdata/model/atom/Content;->TYPE:Lcom/google/gdata/model/AttributeKey;

    const-string v1, "xhtml"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/TextContent;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 361
    sget-object v0, Lcom/google/gdata/model/atom/TextContent;->DIV:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/TextContent;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 362
    return-void
.end method
