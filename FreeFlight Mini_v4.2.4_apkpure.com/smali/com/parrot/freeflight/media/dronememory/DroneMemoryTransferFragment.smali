.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
.super Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;
.source "DroneMemoryTransferFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$EndAction;
    }
.end annotation


# static fields
.field private static final ARG_END_ACTION:Ljava/lang/String; = "endAction"

.field private static final ARG_FILE_ITEM_ARRAY:Ljava/lang/String; = "fileItems"

.field public static final KEY_CURRENT_FILE_PROGRESS:Ljava/lang/String; = "fileProgress"


# instance fields
.field private mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

.field private mEndAction:I

.field private mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

.field private final mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFileProgressBar:Landroid/widget/ProgressBar;

.field private mFileProgressTextView:Landroid/widget/TextView;

.field private mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mResumed:Z

.field private mRootView:Landroid/view/View;

.field private mShouldCancel:Z

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTotalProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onTransferError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileOperation;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->transferOperationUpdated(Lcom/parrot/freeflight/media/model/FileOperation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/media/model/FileTransferManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mShouldCancel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileOperationList;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->transferListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onTransferSucceeded()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 315
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 316
    .local v0, "productMainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 321
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 324
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 219
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;->cancelTransfer()V

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 225
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/FileOperation;->close()V

    .line 223
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    .locals 6
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediaItems"    # [Lcom/parrot/freeflight/media/model/MediaItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endAction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 90
    array-length v4, p1

    new-array v1, v4, [Lcom/parrot/freeflight/media/model/FileItem;

    .line 91
    .local v1, "fileItems":[Lcom/parrot/freeflight/media/model/FileItem;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 92
    new-instance v4, Lcom/parrot/freeflight/media/model/FileItem;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/media/model/FileItem;-><init>(Lcom/parrot/freeflight/media/model/MediaItem;)V

    aput-object v4, v1, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-direct {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;-><init>()V

    .line 95
    .local v2, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;
    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "endAction"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v4, "fileItems"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 99
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v2
.end method

.method private onTransferError()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 300
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 301
    const/4 v0, 0x1

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    const v2, 0x7f0201d9

    const v3, 0x7f0801a0

    .line 302
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0803a8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v7, v4

    .line 301
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    move-result-object v8

    .line 303
    .local v8, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 304
    return-void
.end method

.method private onTransferSucceeded()V
    .locals 4

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 308
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    iget v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    move-result-object v0

    .line 310
    .local v0, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 312
    .end local v0    # "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;
    :cond_0
    return-void
.end method

.method private transferListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 3
    .param p1, "operationList"    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 261
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_1

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 264
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_0

    .line 265
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->updateProgress()V

    .line 270
    return-void
.end method

.method private transferOperationUpdated(Lcom/parrot/freeflight/media/model/FileOperation;)V
    .locals 2
    .param p1, "fileOperation"    # Lcom/parrot/freeflight/media/model/FileOperation;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/FileOperation;->getProgress()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 274
    invoke-virtual {p1}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->updateProgress()V

    .line 277
    :cond_0
    return-void
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    .line 280
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 281
    .local v3, "operationList":Lcom/parrot/freeflight/media/model/FileOperationList;
    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v0

    .line 283
    .local v0, "fileOperationCount":I
    const/4 v4, 0x0

    .line 284
    .local v4, "transferredItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 285
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 286
    .local v2, "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperation;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 287
    add-int/lit8 v4, v4, 0x1

    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    if-eq v4, v0, :cond_2

    .line 293
    add-int/lit8 v4, v4, 0x1

    .line 295
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    const v6, 0x7f0801af

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .end local v0    # "fileOperationCount":I
    .end local v1    # "i":I
    .end local v4    # "transferredItemCount":I
    :cond_3
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    invoke-virtual {v0, v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, "context":Landroid/content/Context;
    new-instance v8, Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    .line 108
    const v8, 0x7f040086

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    .line 109
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0244

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 110
    .local v1, "cancelButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0106

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 111
    .local v4, "droneImageView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0185

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 112
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0246

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    .line 113
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f0247

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    .line 114
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f024d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 115
    .local v7, "totalProgressTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f024e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mTotalProgressBar:Landroid/widget/ProgressBar;

    .line 117
    if-eqz p3, :cond_0

    .line 118
    const-string v8, "fileProgress"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 119
    .local v5, "fileProgress":I
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    .end local v5    # "fileProgress":I
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .line 124
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    invoke-virtual {v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v3

    .line 125
    .local v3, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v8

    invoke-static {v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v6

    .line 131
    .local v6, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "endAction"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    .line 133
    const-string v8, "fileItems"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, [Lcom/parrot/freeflight/media/model/FileItem;

    check-cast v8, [Lcom/parrot/freeflight/media/model/FileItem;

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 135
    new-instance v8, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v8, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v8, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 144
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v9, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;

    invoke-direct {v9, p0, v4, v6}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Landroid/widget/ImageView;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v8, v9}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 153
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0f00db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 156
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressTextView:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 157
    invoke-static {v2, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 158
    iget-object v8, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mRootView:Landroid/view/View;

    return-object v8

    .line 128
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v6    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_1
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BEBOP_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .restart local v6    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onDestroyView()V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->closePermissionRequestDialog()V

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 251
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    .line 198
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onPause()V

    .line 199
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onResume()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mResumed:Z

    .line 189
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mShouldCancel:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->cancel()V

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mEndAction:I

    invoke-virtual {v0, v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    const-string v0, "fileProgress"

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onStart()V

    .line 164
    new-instance v0, Lcom/parrot/freeflight/media/model/FileTransferManager;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$ManagerListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;-><init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileTransferManager$FileManagerListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mPermissionChecker:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f080623

    aput v3, v2, v4

    const v3, 0x7f080624

    new-instance v4, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/FragmentPermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;)V

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onStop()V

    .line 204
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileTransferManager;->close()V

    .line 206
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileTransferManager:Lcom/parrot/freeflight/media/model/FileTransferManager;

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 211
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
