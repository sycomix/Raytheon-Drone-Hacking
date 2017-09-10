.class public Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;,
        Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;,
        Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$PermissionDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_UPLOADING:Ljava/lang/String; = "is uploading key"

.field public static final EXTRA_MEDIAS:Ljava/lang/String; = "medias key"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position key"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title key"

.field private static final GET_ACCOUNTS_REQUEST_CODE:I = 0x1

.field private static final GOOGLE_PLAY_SERVICES_URL:Ljava/lang/String; = "market://details?id=com.google.android.gms"

.field private static final PERMISSION_FRAGMENT_TAG:Ljava/lang/String; = "permission_fragment"

.field private static final PROGRESS_FRAGMENT_TAG:Ljava/lang/String; = "progress_fragment"


# instance fields
.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsUploading:Z

.field private mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

.field private mMediaInfos:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaViewPager:Landroid/support/v4/view/ViewPager;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPosition:I

.field private final mPositiveGmsErrorListener:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressDialogFragment:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUploadButton:Landroid/widget/Button;

.field private mUploadProgressBar:Landroid/widget/ProgressBar;

.field private mUploadView:Landroid/view/View;

.field private mUploadedIndicator:Landroid/widget/ImageView;

.field private mYoutubeButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 68
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPositiveGmsErrorListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$2;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 101
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    .line 174
    new-instance v0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$4;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->refreshUploadButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->uploadOnFacebook()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->permissionGranted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->permissionDenied()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->cancelUploadOnYoutube()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->refreshYoutubeButton()V

    return-void
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->uploadOnFacebookWithSignedInUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mProgressDialogFragment:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;)Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mProgressDialogFragment:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPositiveGmsErrorListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadView:Landroid/view/View;

    return-object v0
.end method

.method private cancelUploadOnYoutube()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->cancelUploadOnYoutube()V

    .line 499
    return-void
.end method

.method private permissionDenied()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    return-void
.end method

.method private permissionGranted()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->uploadOnYoutube()V

    .line 491
    return-void
.end method

.method private refreshUploadButton()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 439
    .restart local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 451
    goto :goto_1

    :cond_2
    move v2, v3

    .line 452
    goto :goto_2
.end method

.method private refreshYoutubeButton()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 427
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mYoutubeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 433
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mYoutubeButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private uploadOnFacebook()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isSignedInToFacebook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    .line 474
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->refreshUploadButton()V

    .line 475
    return-void

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->uploadOnFacebookWithSignedInUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    goto :goto_0
.end method

.method private uploadOnFacebookWithSignedInUser()Z
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 480
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const v2, 0x7f080649

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->uploadOnFacebook(Landroid/app/Activity;Lcom/parrot/freeflight/core/academy/MediaInfos;Ljava/lang/String;)Z

    move-result v1

    .line 485
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uploadOnYoutube()V
    .locals 4

    .prologue
    .line 456
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    iget v3, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 458
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-eqz v0, :cond_0

    .line 459
    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v2, p0, v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->uploadOnYoutube(Landroid/app/Activity;Lcom/parrot/freeflight/core/academy/MediaInfos;)Z

    move-result v1

    .line 460
    .local v1, "uploadStarted":Z
    if-nez v1, :cond_0

    .line 465
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v1    # "uploadStarted":Z
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onFacebookActivityResult(IILandroid/content/Intent;)Z

    .line 409
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onGoogleActivityResult(IILandroid/content/Intent;)V

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    const v4, 0x7f04002d

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->setContentView(I)V

    .line 289
    if-eqz p1, :cond_1

    .line 290
    const-string v4, "medias key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    .line 291
    const-string/jumbo v4, "title key"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mTitle:Ljava/lang/String;

    .line 292
    const-string v4, "position key"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    .line 293
    const-string v4, "is uploading key"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    .line 301
    :goto_0
    const v4, 0x7f0f0123

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    .line 302
    new-instance v4, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    .line 303
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaAdapter:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$MediaAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 305
    const v4, 0x7f0f0122

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadedIndicator:Landroid/widget/ImageView;

    .line 307
    const v4, 0x7f0f011e

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 308
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$5;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v4, 0x7f0f0121

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadProgressBar:Landroid/widget/ProgressBar;

    .line 317
    const v4, 0x7f0f0215

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadView:Landroid/view/View;

    .line 318
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadView:Landroid/view/View;

    new-instance v5, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$6;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$6;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x7f0f0216

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, "facebookButton":Landroid/view/View;
    new-instance v4, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$7;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$7;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v4, 0x7f0f0217

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mYoutubeButton:Landroid/widget/ImageButton;

    .line 335
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mYoutubeButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$8;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v4, 0x7f0f0120

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    .line 354
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    new-instance v5, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$9;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$9;-><init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 362
    const v4, 0x7f0f011f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 363
    .local v3, "titleTextView":Landroid/widget/TextView;
    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 364
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v3    # "titleTextView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mUploadButton:Landroid/widget/Button;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 370
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 371
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->refreshUploadButton()V

    .line 372
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->refreshYoutubeButton()V

    .line 374
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v5, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 375
    iget-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v5, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mGoogleListener:Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setGoogleListener(Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;)V

    .line 376
    return-void

    .line 295
    .end local v0    # "backButton":Landroid/widget/ImageButton;
    .end local v1    # "facebookButton":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 296
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "medias key"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    .line 297
    const-string/jumbo v4, "title key"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mTitle:Ljava/lang/String;

    .line 298
    const-string v4, "position key"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setGoogleListener(Lcom/parrot/freeflight/core/academy/AcademyManager$GoogleListener;)V

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 403
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 404
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 397
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
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
    const/4 v2, 0x0

    .line 415
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 416
    array-length v0, p2

    if-lez v0, :cond_1

    aget-object v0, p2, v2

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->permissionGranted()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->permissionDenied()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 382
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    const-string v0, "medias key"

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mMediaInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 387
    const-string/jumbo v0, "title key"

    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "position key"

    iget v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string v0, "is uploading key"

    iget-boolean v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->mIsUploading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    return-void
.end method
