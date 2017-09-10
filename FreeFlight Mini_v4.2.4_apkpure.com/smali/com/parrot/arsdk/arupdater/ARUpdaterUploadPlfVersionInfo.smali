.class public Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;
.super Ljava/lang/Object;
.source "ARUpdaterUploadPlfVersionInfo.java"


# instance fields
.field private final mIsUpToDate:Z

.field private final mLocalVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUpToDate"    # Z
    .param p2, "localVersion"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->mIsUpToDate:Z

    .line 47
    iput-object p2, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->mLocalVersion:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getLocalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->mLocalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isUpToDate()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/parrot/arsdk/arupdater/ARUpdaterUploadPlfVersionInfo;->mIsUpToDate:Z

    return v0
.end method
