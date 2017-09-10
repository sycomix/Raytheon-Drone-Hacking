.class public Lcom/google/gdata/model/atompub/Control;
.super Lcom/google/gdata/model/Element;
.source "Control.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atompub/Control;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "control"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/atompub/Control;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/Control;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/Control;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 67
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
            "Lcom/google/gdata/model/atompub/Control;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atompub/Control;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 81
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 44
    sget-object v1, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/Control;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 52
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getDraft()Lcom/google/gdata/model/atompub/Draft;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Draft;

    return-object v0
.end method

.method public hasDraft()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public isDraft()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Control;->hasDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gdata/model/atompub/Draft$Value;->YES:Lcom/google/gdata/model/atompub/Draft$Value;

    sget-object v1, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atompub/Control;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/atompub/Draft$Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Control;->lock()Lcom/google/gdata/model/atompub/Control;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/atompub/Control;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Control;

    return-object v0
.end method

.method public setDraft(Lcom/google/gdata/model/atompub/Draft;)Lcom/google/gdata/model/atompub/Control;
    .locals 1
    .param p1, "draft"    # Lcom/google/gdata/model/atompub/Draft;

    .prologue
    .line 104
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 105
    return-object p0
.end method

.method public setDraft(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    new-instance v0, Lcom/google/gdata/model/atompub/Draft;

    sget-object v1, Lcom/google/gdata/model/atompub/Draft$Value;->YES:Lcom/google/gdata/model/atompub/Draft$Value;

    invoke-direct {v0, v1}, Lcom/google/gdata/model/atompub/Draft;-><init>(Lcom/google/gdata/model/atompub/Draft$Value;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Control;->setDraft(Lcom/google/gdata/model/atompub/Draft;)Lcom/google/gdata/model/atompub/Control;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Control;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method
