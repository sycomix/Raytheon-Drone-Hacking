.class public Lcom/parrot/freeflight/core/academy/RunCollection;
.super Ljava/lang/Object;
.source "RunCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;,
        Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;
    }
.end annotation


# static fields
.field private static final DUMMY_USER:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "RunCollection"


# instance fields
.field private final mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInited:Z

.field private final mRunSummaryComparator:Ljava/util/Comparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunsMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/academy/RunInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$1;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunSummaryComparator:Ljava/util/Comparator;

    .line 81
    const-string v0, "RunCollection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    .line 85
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$2;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$3;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 99
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$4;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$5;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 113
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    new-instance v1, Lcom/parrot/freeflight/core/academy/RunCollection$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/core/academy/RunCollection$6;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;-><init>(Lcom/parrot/freeflight/core/academy/RunCollection;Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 121
    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/academy/RunCollection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/academy/RunCollection;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    return-object v0
.end method

.method private addRunSummary(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 4
    .param p1, "runSummary"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 311
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->refreshWithAcademyRun(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V

    .line 315
    .restart local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 316
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 319
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDetectAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0
.end method

.method private isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "runUserName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->markToDelete()V

    .line 155
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$100(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    .line 165
    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeSelf()V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addRunDetail(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "runDetail"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 179
    .local v0, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->setRunDetails(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 188
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    .line 189
    return-void

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    .line 182
    new-instance v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    .end local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-direct {v0, p1, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 183
    .restart local v0    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 184
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 343
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 345
    return-void
.end method

.method public getDeleteRunHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getDetectAddressHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getDownloadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/RunInformation;

    return-object v0
.end method

.method public getRunSummaryList()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 328
    .local v0, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToDelete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunSummaryComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
    :cond_2
    return-object v1
.end method

.method public getUpdateGradeHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public getUploadHolder()Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    return v0
.end method

.method public loadLocalData()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 262
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load local data for  user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 265
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 266
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 267
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 268
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 269
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v4}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$500(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)V

    .line 272
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "summaryFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "listFiles":[Ljava/io/File;
    if-eqz v0, :cond_6

    array-length v4, v0

    if-lez v4, :cond_6

    .line 275
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v2, v0, v4

    .line 276
    .local v2, "summaryFile":Ljava/io/File;
    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->create(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v1

    .line 277
    .local v1, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v1, :cond_5

    .line 278
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToDelete()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 280
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 288
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDetectAddress()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 289
    :cond_1
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needUpdateGrade()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 275
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needDownload()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 284
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_1

    .line 285
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needUpload()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6, v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 295
    .end local v1    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v2    # "summaryFile":Ljava/io/File;
    :cond_6
    const-string v4, "RunCollection"

    const-string v5, "No local summary runs found ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_7
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " local runs found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runs to download count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runs to upload count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runs to delete count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToDetectAddress count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v4, "RunCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runsToUpdateGrade count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 306
    return-void
.end method

.method public mergeServerRunList(Ljava/util/Date;Ljava/util/List;)V
    .locals 10
    .param p1, "requestDate"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "serverRuns":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    .local v2, "localUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 202
    new-instance v3, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v3, "removeCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v1, "downloadCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 206
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setUser(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "uuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 209
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->addRunSummary(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V

    .line 210
    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v5

    .line 216
    .local v5, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->refreshWithAcademyRun(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    .line 218
    .end local v5    # "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v0    # "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 222
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 223
    .restart local v6    # "uuid":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v4

    .line 224
    .local v4, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 226
    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->getLastModifyDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v8

    if-lez v8, :cond_4

    .line 227
    :cond_5
    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeSelf()V

    .line 228
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    .line 230
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    goto :goto_2

    .line 235
    .end local v4    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 236
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    .restart local v6    # "uuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/academy/RunInformation;

    .line 238
    .restart local v5    # "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeSelf()V

    .line 239
    :cond_7
    iget-object v8, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v8, v6}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$300(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Ljava/lang/String;)Z

    goto :goto_3

    .line 242
    .end local v5    # "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v7}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 244
    :cond_9
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "synchronizeWithServer finish, server count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", local count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDownload count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDownloadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToUpload count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDelete count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToDetectAddress count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDetectAddressHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v7, "RunCollection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runsToUpdateGrade count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v9}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$400(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDeleteSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->needToDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeSelf()V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mRunsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    return-void
.end method

.method public removeRun(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->getRunByUuid(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v0

    .line 148
    .local v0, "runInformation":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUserName:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mInited:Z

    .line 130
    return-void
.end method

.method public updateGrade(Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 2
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mDeleteHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUploadHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$200(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->isCurrentUserRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunCollection;->mUpdateGradeHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->access$000(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 173
    :cond_0
    return-void
.end method
