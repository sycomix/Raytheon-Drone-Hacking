.class public Lcom/google/api/gbase/client/ItemTypeDescription;
.super Ljava/lang/Object;
.source "ItemTypeDescription.java"


# instance fields
.field private final owner:Lcom/google/gdata/data/BaseEntry;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .param p1, "owner"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    .line 43
    return-void
.end method

.method private getGmAttributesExtension()Lcom/google/api/gbase/client/GmAttributes;
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v2, Lcom/google/api/gbase/client/GmAttributes;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmAttributes;

    .line 88
    .local v0, "attributes":Lcom/google/api/gbase/client/GmAttributes;
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/google/api/gbase/client/GmAttributes;

    .end local v0    # "attributes":Lcom/google/api/gbase/client/GmAttributes;
    invoke-direct {v0}, Lcom/google/api/gbase/client/GmAttributes;-><init>()V

    .line 90
    .restart local v0    # "attributes":Lcom/google/api/gbase/client/GmAttributes;
    iget-object v1, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/BaseEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 92
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAttributeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/api/gbase/client/GoogleBaseAttributeId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/api/gbase/client/ItemTypeDescription;->getGmAttributesExtension()Lcom/google/api/gbase/client/GmAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmAttributes;->getAttributeIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/gbase/client/GmAttributes$GmAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/api/gbase/client/ItemTypeDescription;->getGmAttributesExtension()Lcom/google/api/gbase/client/GmAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmAttributes;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v2, Lcom/google/api/gbase/client/GmItemType;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmItemType;

    .line 58
    .local v0, "tag":Lcom/google/api/gbase/client/GmItemType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmItemType;->getItemType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/api/gbase/client/GmItemType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->removeExtension(Ljava/lang/Class;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/ItemTypeDescription;->owner:Lcom/google/gdata/data/BaseEntry;

    new-instance v1, Lcom/google/api/gbase/client/GmItemType;

    invoke-direct {v1, p1}, Lcom/google/api/gbase/client/GmItemType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
