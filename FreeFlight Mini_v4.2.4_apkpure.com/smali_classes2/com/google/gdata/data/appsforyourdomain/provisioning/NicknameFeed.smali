.class public Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "NicknameFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/apps/2006#nickname"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;",
        "Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameEntry;->NICKNAME_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .param p1, "sourceFeed"    # Lcom/google/gdata/data/BaseFeed;

    .prologue
    .line 44
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameEntry;->NICKNAME_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 51
    return-void
.end method
