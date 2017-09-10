.class public Lcom/google/gdata/data/docs/ChangelogEntry;
.super Lcom/google/gdata/data/docs/BaseDocumentListEntry;
.source "ChangelogEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#change"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/docs/BaseDocumentListEntry",
        "<",
        "Lcom/google/gdata/data/docs/ChangelogEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#change"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#change"

    const-string v3, "change"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/ChangelogEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/docs/BaseDocumentListEntry;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ChangelogEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/ChangelogEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
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
    .line 59
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/BaseDocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/docs/ChangelogEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/docs/BaseDocumentListEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/docs/ChangelogEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/Changestamp;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    const-class v0, Lcom/google/gdata/data/docs/ChangelogEntry;

    const-class v1, Lcom/google/gdata/data/docs/Removed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getChangestamp()Lcom/google/gdata/data/docs/Changestamp;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/google/gdata/data/docs/Changestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Changestamp;

    return-object v0
.end method

.method public getRemoved()Lcom/google/gdata/data/docs/Removed;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/google/gdata/data/docs/Removed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Removed;

    return-object v0
.end method

.method public hasChangestamp()Z
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/google/gdata/data/docs/Changestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRemoved()Z
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/google/gdata/data/docs/Removed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setChangestamp(Lcom/google/gdata/data/docs/Changestamp;)V
    .locals 1
    .param p1, "changestamp"    # Lcom/google/gdata/data/docs/Changestamp;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-class v0, Lcom/google/gdata/data/docs/Changestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->removeExtension(Ljava/lang/Class;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ChangelogEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRemoved(Lcom/google/gdata/data/docs/Removed;)V
    .locals 1
    .param p1, "removed"    # Lcom/google/gdata/data/docs/Removed;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-class v0, Lcom/google/gdata/data/docs/Removed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogEntry;->removeExtension(Ljava/lang/Class;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ChangelogEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ChangelogEntry "

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
    .line 137
    return-void
.end method
