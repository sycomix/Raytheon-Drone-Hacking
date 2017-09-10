.class public Lcom/google/api/gbase/client/MetadataEntryExtension;
.super Ljava/lang/Object;
.source "MetadataEntryExtension.java"


# instance fields
.field private final itemType:Lcom/google/api/gbase/client/ItemTypeDescription;

.field private final owner:Lcom/google/gdata/data/BaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "owner":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    .line 58
    new-instance v0, Lcom/google/api/gbase/client/ItemTypeDescription;

    invoke-direct {v0, p1}, Lcom/google/api/gbase/client/ItemTypeDescription;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->itemType:Lcom/google/api/gbase/client/ItemTypeDescription;

    .line 59
    return-void
.end method


# virtual methods
.method public getAttributeHistogram()Lcom/google/api/gbase/client/AttributeHistogram;
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v2, Lcom/google/api/gbase/client/AttributeHistogram;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/AttributeHistogram;

    .line 70
    .local v0, "histogram":Lcom/google/api/gbase/client/AttributeHistogram;
    if-nez v0, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not a histogram feed entry."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    return-object v0
.end method

.method public getGmPublishingPriority()Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v3}, Lcom/google/gdata/data/BaseEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v1

    .line 156
    .local v1, "pubControl":Lcom/google/gdata/data/PubControl;
    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v2

    .line 160
    :cond_1
    const-class v3, Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-virtual {v1, v3}, Lcom/google/gdata/data/PubControl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmPublishingPriority;

    .line 162
    .local v0, "priority":Lcom/google/api/gbase/client/GmPublishingPriority;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GmPublishingPriority;->getValue()Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemTypeDescription()Lcom/google/api/gbase/client/ItemTypeDescription;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/api/gbase/client/MetadataEntryExtension;->hasItemTypeDescription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an item-type entry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->itemType:Lcom/google/api/gbase/client/ItemTypeDescription;

    return-object v0
.end method

.method public getStats()Lcom/google/api/gbase/client/Stats;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/api/gbase/client/Stats;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/Stats;

    return-object v0
.end method

.method public hasAttributeHistogram()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/api/gbase/client/AttributeHistogram;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGmDisapproved()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0}, Lcom/google/gdata/data/BaseEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0}, Lcom/google/gdata/data/BaseEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    const-class v1, Lcom/google/api/gbase/client/GmDisapproved;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasItemTypeDescription()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->itemType:Lcom/google/api/gbase/client/ItemTypeDescription;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ItemTypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStats()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    const-class v1, Lcom/google/api/gbase/client/Stats;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/api/gbase/client/MetadataEntryExtension;->hasAttributeHistogram()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/gbase/client/MetadataEntryExtension;->hasItemTypeDescription()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/gbase/client/MetadataEntryExtension;->hasStats()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGmPublishingPriority(Lcom/google/api/gbase/client/GmPublishingPriority$Value;)V
    .locals 3
    .param p1, "value"    # Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .prologue
    .line 175
    new-instance v0, Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-direct {v0}, Lcom/google/api/gbase/client/GmPublishingPriority;-><init>()V

    .line 176
    .local v0, "priority":Lcom/google/api/gbase/client/GmPublishingPriority;
    invoke-virtual {v0, p1}, Lcom/google/api/gbase/client/GmPublishingPriority;->setValue(Lcom/google/api/gbase/client/GmPublishingPriority$Value;)V

    .line 178
    iget-object v2, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v2}, Lcom/google/gdata/data/BaseEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v1

    .line 179
    .local v1, "pubControl":Lcom/google/gdata/data/PubControl;
    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/google/gdata/data/PubControl;

    .end local v1    # "pubControl":Lcom/google/gdata/data/PubControl;
    invoke-direct {v1}, Lcom/google/gdata/data/PubControl;-><init>()V

    .line 181
    .restart local v1    # "pubControl":Lcom/google/gdata/data/PubControl;
    iget-object v2, p0, Lcom/google/api/gbase/client/MetadataEntryExtension;->owner:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v2, v1}, Lcom/google/gdata/data/BaseEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 183
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/gdata/data/PubControl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 184
    return-void
.end method
