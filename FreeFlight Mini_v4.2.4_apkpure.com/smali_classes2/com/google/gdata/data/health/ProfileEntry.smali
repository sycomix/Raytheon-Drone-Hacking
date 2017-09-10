.class public Lcom/google/gdata/data/health/ProfileEntry;
.super Lcom/google/gdata/data/health/BaseHealthEntry;
.source "ProfileEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/health/kinds#profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/health/BaseHealthEntry",
        "<",
        "Lcom/google/gdata/data/health/ProfileEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/health/kinds#profile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/health/kinds#profile"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/ProfileEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/health/BaseHealthEntry;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/gdata/data/health/ProfileEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/health/ProfileEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
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
    .line 58
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/health/BaseHealthEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 63
    const-class v0, Lcom/google/gdata/data/health/ProfileEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/health/BaseHealthEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/health/ProfileEntry;

    const-class v1, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/health/ProfileEntry;

    const-class v1, Lcom/google/gdata/data/health/ProfileMetaData;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getContinuityOfCareRecord()Lcom/google/gdata/data/health/ContinuityOfCareRecord;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    return-object v0
.end method

.method public getProfileMetaData()Lcom/google/gdata/data/health/ProfileMetaData;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/google/gdata/data/health/ProfileMetaData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/health/ProfileMetaData;

    return-object v0
.end method

.method public hasContinuityOfCareRecord()Z
    .locals 1

    .prologue
    .line 101
    const-class v0, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasProfileMetaData()Z
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/google/gdata/data/health/ProfileMetaData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setContinuityOfCareRecord(Lcom/google/gdata/data/health/ContinuityOfCareRecord;)V
    .locals 1
    .param p1, "continuityOfCareRecord"    # Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-class v0, Lcom/google/gdata/data/health/ContinuityOfCareRecord;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/health/ProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setProfileMetaData(Lcom/google/gdata/data/health/ProfileMetaData;)V
    .locals 1
    .param p1, "profileMetaData"    # Lcom/google/gdata/data/health/ProfileMetaData;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-class v0, Lcom/google/gdata/data/health/ProfileMetaData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/health/ProfileEntry;->removeExtension(Ljava/lang/Class;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/health/ProfileEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ProfileEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/data/health/BaseHealthEntry;->toString()Ljava/lang/String;

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
