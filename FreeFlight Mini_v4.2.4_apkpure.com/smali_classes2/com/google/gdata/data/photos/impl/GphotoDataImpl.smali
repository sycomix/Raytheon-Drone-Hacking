.class public Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.super Ljava/lang/Object;
.source "GphotoDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;


# instance fields
.field private final extClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final extPoint:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 1
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extClass:Ljava/lang/Class;

    .line 57
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 160
    return-void
.end method

.method public addRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 168
    return-void
.end method

.method protected declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "description"    # Lcom/google/gdata/data/ExtensionDescription;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extClass:Ljava/lang/Class;

    invoke-virtual {p1, v0, p2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 87
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    iget-object v1, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p1, v0, p2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 90
    :cond_0
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {v2, v2}, Lcom/google/gdata/data/photos/GphotoId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 65
    invoke-static {v2, v2}, Lcom/google/gdata/data/photos/GphotoType;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/Person;

    invoke-static {v2, v2}, Lcom/google/gdata/data/photos/GphotoUsername;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/Person;

    invoke-static {v2, v2}, Lcom/google/gdata/data/photos/GphotoNickname;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/Person;

    invoke-static {v2, v2}, Lcom/google/gdata/data/photos/GphotoThumbnail;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    return-void
.end method

.method protected getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    return-object v0
.end method

.method public getGphotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/google/gdata/data/photos/GphotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ValueConstruct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ValueConstruct;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ValueConstruct;

    .line 126
    .local v0, "construct":Lcom/google/gdata/data/ValueConstruct;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/ValueConstruct;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public removeExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Lcom/google/gdata/data/Extension;)V

    .line 184
    return-void
.end method

.method public removeExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeExtension(Ljava/lang/Class;)V

    .line 176
    return-void
.end method

.method public removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "ext"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 191
    return-void
.end method

.method public setExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->extPoint:Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionPoint;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 152
    return-void
.end method

.method public setGphotoId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-static {p1}, Lcom/google/gdata/data/photos/GphotoId;->from(Ljava/lang/Long;)Lcom/google/gdata/data/photos/GphotoId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setGphotoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/google/gdata/data/photos/GphotoId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
