.class public Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
.super Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;
.source "DroneMemoryDeleteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;,
        Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;
    }
.end annotation


# static fields
.field private static final ARG_END_ACTION:Ljava/lang/String; = "endAction"

.field private static final ARG_FILE_ITEM_ARRAY:Ljava/lang/String; = "fileItems"

.field private static final STATE_DELETING:Ljava/lang/String; = "deleting"


# instance fields
.field private mCancelDeletingButton:Landroid/widget/Button;

.field private mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

.field private mDeleting:Z

.field private mDescriptionStatusTextView:Landroid/widget/TextView;

.field private mEndAction:I

.field private mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

.field private final mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

.field private mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;

.field private mInstanceSaved:Z

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/view/View;

.field private mProgressTextView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mStatusImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mEndAction:I

    .line 66
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mEndAction:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onDeleteSucceeded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onDeleteError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->deleteOperationUpdated()V

    return-void
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->updateView()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Lcom/parrot/freeflight/media/model/FileDeleteManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)[Lcom/parrot/freeflight/media/model/FileItem;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mInstanceSaved:Z

    return v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    .param p1, "x1"    # Lcom/parrot/freeflight/media/model/FileOperationList;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->deleteListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 4

    .prologue
    .line 237
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 238
    .local v0, "productMainColor":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 239
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 240
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 241
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 242
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 243
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0046

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 244
    .local v1, "redColor":I
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 246
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 247
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->cancelDelete()V

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 229
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/parrot/freeflight/media/model/FileOperation;->close()V

    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private deleteListUpdated(Lcom/parrot/freeflight/media/model/FileOperationList;)V
    .locals 3
    .param p1, "deleteList"    # Lcom/parrot/freeflight/media/model/FileOperationList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 271
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 272
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 275
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_0

    .line 276
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->registerObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->updateProgress()V

    .line 281
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private deleteOperationUpdated()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->updateProgress()V

    .line 285
    return-void
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    .locals 3
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fileItems"    # [Lcom/parrot/freeflight/media/model/FileItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endAction"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;-><init>()V

    .line 87
    .local v1, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "endAction"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v2, "fileItems"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/MediaItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;
    .locals 4
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
    .line 76
    array-length v2, p1

    new-array v0, v2, [Lcom/parrot/freeflight/media/model/FileItem;

    .line 77
    .local v0, "fileItems":[Lcom/parrot/freeflight/media/model/FileItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 78
    new-instance v2, Lcom/parrot/freeflight/media/model/FileItem;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/media/model/FileItem;-><init>(Lcom/parrot/freeflight/media/model/MediaItem;)V

    aput-object v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    move-result-object v2

    return-object v2
.end method

.method private onDeleteError()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 310
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->cancel()V

    .line 311
    const/4 v0, 0x1

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mEndAction:I

    const v2, 0x7f0201d9

    const v3, 0x7f0801a0

    .line 312
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0803a8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v7, v4

    .line 311
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->newInstance(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    move-result-object v8

    .line 313
    .local v8, "fragment":Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-virtual {v0, v8}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 314
    return-void
.end method

.method private onDeleteSucceeded()V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    .line 288
    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    .line 289
    .local v4, "operationList":Lcom/parrot/freeflight/media/model/FileOperationList;
    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {v4}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v1

    .line 291
    .local v1, "fileOperationCount":I
    if-eqz v1, :cond_3

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "deletedItemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 294
    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 295
    .local v3, "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/FileOperation;->isSucceeded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/parrot/freeflight/media/model/FileOperation;->getProgress()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 293
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v3    # "operation":Lcom/parrot/freeflight/media/model/FileOperation;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressBar:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v0, 0x64

    div-int/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 300
    if-eq v0, v1, :cond_2

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 304
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressTextView:Landroid/widget/TextView;

    const v6, 0x7f0801af

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .end local v0    # "deletedItemCount":I
    .end local v1    # "fileOperationCount":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDescriptionStatusTextView:Landroid/widget/TextView;

    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDescriptionStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100006

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->cancel()V

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mEndAction:I

    invoke-virtual {v0, v1, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 183
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 98
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, "context":Landroid/content/Context;
    const v5, 0x7f040084

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    .line 100
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0243

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    .line 101
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0240

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusImageView:Landroid/widget/ImageView;

    .line 102
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0185

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusTextView:Landroid/widget/TextView;

    .line 103
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0241

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDescriptionStatusTextView:Landroid/widget/TextView;

    .line 104
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f00e7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    .line 105
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0244

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    .line 106
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0245

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressLayout:Landroid/view/View;

    .line 107
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0246

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressTextView:Landroid/widget/TextView;

    .line 108
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f0247

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 110
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .local v4, "targetFragment":Landroid/support/v4/app/Fragment;
    move-object v5, v4

    .line 111
    check-cast v5, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    .line 112
    if-eqz p3, :cond_0

    .line 113
    const-string v5, "deleting"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "endAction"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mEndAction:I

    .line 118
    const-string v5, "fileItems"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Lcom/parrot/freeflight/media/model/FileItem;

    check-cast v5, [Lcom/parrot/freeflight/media/model/FileItem;

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    .line 119
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    array-length v2, v5

    .line 122
    .local v2, "itemCount":I
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusTextView:Landroid/widget/TextView;

    const v6, 0x7f100003

    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$1;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;

    invoke-direct {v6, p0, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    new-instance v6, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v5, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 150
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v6, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$4;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$4;-><init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 157
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0f00db

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 158
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mCancelDeletingButton:Landroid/widget/Button;

    invoke-static {v1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 160
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDescriptionStatusTextView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 161
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-static {v1, v5, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 162
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-static {v1, v5, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 163
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProgressTextView:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    invoke-direct {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->updateView()V

    .line 165
    iget-object v5, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mRootView:Landroid/view/View;

    return-object v5
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onDestroyView()V

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 220
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "deleting"

    iget-boolean v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mInstanceSaved:Z

    .line 197
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onStart()V

    .line 171
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDeleting:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/parrot/freeflight/media/model/FileDeleteManager;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mController:Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileManagerListener:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/media/model/FileDeleteManager;-><init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onStop()V

    .line 202
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileDeleteManager:Lcom/parrot/freeflight/media/model/FileDeleteManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->close()V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    if-eqz v2, :cond_2

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/model/FileOperationList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationList:Lcom/parrot/freeflight/media/model/FileOperationList;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/media/model/FileOperationList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/model/FileOperation;

    .line 208
    .local v0, "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    if-eqz v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mFileOperationObserver:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$FileOperationObserver;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/media/model/FileOperation;->unregisterObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V

    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "fileOperation":Lcom/parrot/freeflight/media/model/FileOperation;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryBaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mInstanceSaved:Z

    .line 190
    return-void
.end method
