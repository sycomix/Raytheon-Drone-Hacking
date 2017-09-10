.class public Lcom/google/gdata/data/docs/ArchiveEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ArchiveEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#archive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/docs/ArchiveEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#archive"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#archive"

    const-string v3, "archive"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/ArchiveEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/ArchiveEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addArchiveConversion(Lcom/google/gdata/data/docs/ArchiveConversion;)V
    .locals 1
    .param p1, "archiveConversion"    # Lcom/google/gdata/data/docs/ArchiveConversion;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getArchiveConversions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public addArchiveFailure(Lcom/google/gdata/data/docs/ArchiveFailure;)V
    .locals 1
    .param p1, "archiveFailure"    # Lcom/google/gdata/data/docs/ArchiveFailure;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getArchiveFailures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addArchiveResourceId(Lcom/google/gdata/data/docs/ArchiveResourceId;)V
    .locals 1
    .param p1, "archiveResourceId"    # Lcom/google/gdata/data/docs/ArchiveResourceId;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getArchiveResourceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 67
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveComplete;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    invoke-static {v2, v2}, Lcom/google/gdata/data/docs/ArchiveConversion;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 74
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/docs/ArchiveFailure;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveNotify;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/docs/ArchiveResourceId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 80
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 81
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveTotal;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/google/gdata/data/docs/ArchiveEntry;

    const-class v1, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getArchiveComplete()Lcom/google/gdata/data/docs/ArchiveComplete;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/docs/ArchiveComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveComplete;

    return-object v0
.end method

.method public getArchiveConversions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ArchiveConversion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-class v0, Lcom/google/gdata/data/docs/ArchiveConversion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveFailures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ArchiveFailure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-class v0, Lcom/google/gdata/data/docs/ArchiveFailure;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveNotify()Lcom/google/gdata/data/docs/ArchiveNotify;
    .locals 1

    .prologue
    .line 178
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotify;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveNotify;

    return-object v0
.end method

.method public getArchiveNotifyStatus()Lcom/google/gdata/data/docs/ArchiveNotifyStatus;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    return-object v0
.end method

.method public getArchiveResourceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ArchiveResourceId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const-class v0, Lcom/google/gdata/data/docs/ArchiveResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveStatus()Lcom/google/gdata/data/docs/ArchiveStatus;
    .locals 1

    .prologue
    .line 268
    const-class v0, Lcom/google/gdata/data/docs/ArchiveStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveStatus;

    return-object v0
.end method

.method public getArchiveTotal()Lcom/google/gdata/data/docs/ArchiveTotal;
    .locals 1

    .prologue
    .line 299
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveTotal;

    return-object v0
.end method

.method public getArchiveTotalComplete()Lcom/google/gdata/data/docs/ArchiveTotalComplete;
    .locals 1

    .prologue
    .line 330
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    return-object v0
.end method

.method public getArchiveTotalFailure()Lcom/google/gdata/data/docs/ArchiveTotalFailure;
    .locals 1

    .prologue
    .line 363
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    return-object v0
.end method

.method public getQuotaBytesUsed()Lcom/google/gdata/data/extensions/QuotaBytesUsed;
    .locals 1

    .prologue
    .line 395
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    return-object v0
.end method

.method public hasArchiveComplete()Z
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/google/gdata/data/docs/ArchiveComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveConversions()Z
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/google/gdata/data/docs/ArchiveConversion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveFailures()Z
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/google/gdata/data/docs/ArchiveFailure;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveNotify()Z
    .locals 1

    .prologue
    .line 200
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotify;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveNotifyStatus()Z
    .locals 1

    .prologue
    .line 232
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveResourceIds()Z
    .locals 1

    .prologue
    .line 259
    const-class v0, Lcom/google/gdata/data/docs/ArchiveResourceId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveStatus()Z
    .locals 1

    .prologue
    .line 290
    const-class v0, Lcom/google/gdata/data/docs/ArchiveStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveTotal()Z
    .locals 1

    .prologue
    .line 321
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveTotalComplete()Z
    .locals 1

    .prologue
    .line 354
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArchiveTotalFailure()Z
    .locals 1

    .prologue
    .line 386
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaBytesUsed()Z
    .locals 1

    .prologue
    .line 417
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setArchiveComplete(Lcom/google/gdata/data/docs/ArchiveComplete;)V
    .locals 1
    .param p1, "archiveComplete"    # Lcom/google/gdata/data/docs/ArchiveComplete;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-class v0, Lcom/google/gdata/data/docs/ArchiveComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveNotify(Lcom/google/gdata/data/docs/ArchiveNotify;)V
    .locals 1
    .param p1, "archiveNotify"    # Lcom/google/gdata/data/docs/ArchiveNotify;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotify;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveNotifyStatus(Lcom/google/gdata/data/docs/ArchiveNotifyStatus;)V
    .locals 1
    .param p1, "archiveNotifyStatus"    # Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const-class v0, Lcom/google/gdata/data/docs/ArchiveNotifyStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveStatus(Lcom/google/gdata/data/docs/ArchiveStatus;)V
    .locals 1
    .param p1, "archiveStatus"    # Lcom/google/gdata/data/docs/ArchiveStatus;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const-class v0, Lcom/google/gdata/data/docs/ArchiveStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveTotal(Lcom/google/gdata/data/docs/ArchiveTotal;)V
    .locals 1
    .param p1, "archiveTotal"    # Lcom/google/gdata/data/docs/ArchiveTotal;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveTotalComplete(Lcom/google/gdata/data/docs/ArchiveTotalComplete;)V
    .locals 1
    .param p1, "archiveTotalComplete"    # Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalComplete;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArchiveTotalFailure(Lcom/google/gdata/data/docs/ArchiveTotalFailure;)V
    .locals 1
    .param p1, "archiveTotalFailure"    # Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const-class v0, Lcom/google/gdata/data/docs/ArchiveTotalFailure;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaBytesUsed(Lcom/google/gdata/data/extensions/QuotaBytesUsed;)V
    .locals 1
    .param p1, "quotaBytesUsed"    # Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 405
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveEntry;->removeExtension(Ljava/lang/Class;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ArchiveEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method
