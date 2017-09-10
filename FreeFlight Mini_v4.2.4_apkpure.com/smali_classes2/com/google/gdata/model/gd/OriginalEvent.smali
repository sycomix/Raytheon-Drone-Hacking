.class public Lcom/google/gdata/model/gd/OriginalEvent;
.super Lcom/google/gdata/model/Element;
.source "OriginalEvent.java"


# static fields
.field public static final HREF:Lcom/google/gdata/model/AttributeKey;
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
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/OriginalEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "originalEvent"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/OriginalEvent;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 44
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "href"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->HREF:Lcom/google/gdata/model/AttributeKey;

    .line 50
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "id"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/OriginalEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/OriginalEvent;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/OriginalEvent;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/OriginalEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 97
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    const/4 v2, 0x1

    .line 57
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 66
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 67
    sget-object v1, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setRequired(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalStartTime()Lcom/google/gdata/model/gd/When;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/When;

    return-object v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasOriginalId()Z
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasOriginalStartTime()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/OriginalEvent;->lock()Lcom/google/gdata/model/gd/OriginalEvent;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OriginalEvent;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 122
    return-object p0
.end method

.method public setOriginalId(Ljava/lang/String;)Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1
    .param p1, "originalId"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->ORIGINAL_ID:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 152
    return-object p0
.end method

.method public setOriginalStartTime(Lcom/google/gdata/model/gd/When;)Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1
    .param p1, "originalStartTime"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 180
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 181
    return-object p0
.end method
