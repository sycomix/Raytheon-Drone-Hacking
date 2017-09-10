.class public Lcom/google/api/gbase/client/GmItemType;
.super Lcom/google/gdata/data/AbstractExtension;
.source "GmItemType.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "item_type"
    nsAlias = "gm"
    nsUri = "http://base.google.com/ns-metadata/1.0"
.end annotation


# instance fields
.field private itemType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method protected validate()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/gdata/data/AbstractExtension;->validate()V

    .line 70
    iget-object v0, p0, Lcom/google/api/gbase/client/GmItemType;->itemType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An item type should be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method
