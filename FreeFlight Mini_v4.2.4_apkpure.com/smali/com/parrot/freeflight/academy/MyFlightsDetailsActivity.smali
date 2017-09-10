.class public Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "MyFlightsDetailsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/IUuidHolder;
.implements Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;,
        Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$ButtonIndex;
    }
.end annotation


# static fields
.field private static final DATE_INSTANCE_FORMAT:Ljava/text/DateFormat;

.field public static final EXTRA_RUN_UUID:Ljava/lang/String; = "extra_run_uuid"

.field public static final EXTRA_SELECTED_BUTTON_INDEX:Ljava/lang/String; = "extra_selected_button_index"

.field private static final FLIGHT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final FRAGMENT_GPS_TAG:Ljava/lang/String; = "fragment gps tag"

.field private static final FRAGMENT_GRAPHICS_TAG:Ljava/lang/String; = "fragment graphics tag"

.field private static final FRAGMENT_MEDIAS_TAG:Ljava/lang/String; = "fragment medias tag"

.field private static final FRAGMENT_SUMMARY_TAG:Ljava/lang/String; = "fragment summary tag"

.field private static final GPS_INDEX:I = 0x1

.field private static final GRAPHICS_INDEX:I = 0x2

.field private static final GRAPHIC_SCREENSHOT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MEDIAS_INDEX:I = 0x3

.field private static final SCREENSHOT_FILE:Ljava/io/File;

.field private static final SUMMARY_INDEX:I

.field private static final TIME_INSTANCE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private mCurrentFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGpsButton:Landroid/widget/Button;

.field private mGpsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGraphicsButton:Landroid/widget/Button;

.field private mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsSendingEmail:Z

.field private mIsSmall:Z

.field private mIsUploading:Z

.field private mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

.field private final mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediasButton:Landroid/widget/Button;

.field private mMediasFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediasFragmentView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mSelectedButtonIndex:I

.field private mShareRunButton:Landroid/widget/Button;

.field private mShareRunGraphicButton:Landroid/widget/Button;

.field private mShareRunListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShareRunProgressBar:Landroid/widget/ProgressBar;

.field private mShareRunSeparator:Landroid/view/View;

.field private mSummaryButton:Landroid/widget/Button;

.field private mSummaryFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUploadView:Landroid/view/View;

.field private mUuid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graphicView.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->SCREENSHOT_FILE:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->GRAPHIC_SCREENSHOT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->FLIGHT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 84
    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->DATE_INSTANCE_FORMAT:Ljava/text/DateFormat;

    .line 85
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->TIME_INSTANCE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;

    invoke-direct {v0, p0, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$AcademyRequestListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 128
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    .line 144
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$2;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSmall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mCurrentFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mCurrentFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->updateButtonSelection(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSendingEmail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->isMediaAvailable(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->displayFlight()V

    return-void
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->runSentByEmail(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsUploading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->refreshShareViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->uploadOnFacebookWithSignedInUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUploadView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->uploadOnFacebook()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 478
    :cond_4
    return-void
.end method

.method private checkAndAskPermissions()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 604
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f080621

    aput v3, v2, v4

    const v3, 0x7f080622

    new-instance v4, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$13;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$13;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 614
    return-void
.end method

.method private createGraphicScreenshot(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 4
    .param p1, "item"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 488
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    sget-object v3, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->SCREENSHOT_FILE:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;->createScreenshot(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-direct {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;-><init>()V

    .line 490
    .local v0, "graphicScreenshot":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v1

    .line 491
    .local v1, "productId":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 492
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 493
    sget-object v2, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v2, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 494
    sget-object v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->GRAPHIC_SCREENSHOT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 495
    sget-object v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->SCREENSHOT_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 500
    .end local v0    # "graphicScreenshot":Lcom/parrot/arsdk/armedia/ARMediaObject;
    .end local v1    # "productId":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayFlight()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 535
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v11

    iget-object v12, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v8

    .line 536
    .local v8, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    const/4 v0, 0x0

    .line 538
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v8, :cond_0

    .line 539
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v3

    .line 540
    .local v3, "finalAcademyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    move-object v0, v3

    .line 542
    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    new-instance v12, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;

    invoke-direct {v12, p0, v3}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$11;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    new-instance v12, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$12;

    invoke-direct {v12, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$12;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    :try_start_0
    sget-object v11, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->FLIGHT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 560
    .local v4, "flightDate":Ljava/util/Date;
    sget-object v11, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->DATE_INSTANCE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v11, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "date":Ljava/lang/String;
    sget-object v11, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->TIME_INSTANCE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v11, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 562
    .local v9, "time":Ljava/lang/String;
    const v11, 0x7f080686

    invoke-virtual {p0, v11}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "finalAcademyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v4    # "flightDate":Ljava/util/Date;
    .end local v9    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 569
    const v11, 0x7f08036c

    invoke-virtual {p0, v11}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitle:Ljava/lang/String;

    .line 571
    :cond_1
    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v7, 0x0

    .line 576
    .local v7, "mediasAvailable":Z
    if-eqz v0, :cond_4

    .line 577
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->isMediaAvailable(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z

    move-result v7

    .line 578
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v5

    .line 579
    .local v5, "gpsAvailable":Z
    invoke-virtual {v8}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunDetail()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 586
    .local v6, "graphicsAvailable":Z
    :goto_1
    iget-boolean v10, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSmall:Z

    if-eqz v10, :cond_5

    .line 587
    invoke-direct {p0, v7, v5, v6}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->initSmallLayout(ZZZ)V

    .line 592
    :cond_2
    :goto_2
    return-void

    .line 563
    .end local v5    # "gpsAvailable":Z
    .end local v6    # "graphicsAvailable":Z
    .end local v7    # "mediasAvailable":Z
    .restart local v3    # "finalAcademyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "finalAcademyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .restart local v5    # "gpsAvailable":Z
    .restart local v7    # "mediasAvailable":Z
    :cond_3
    move v6, v10

    .line 579
    goto :goto_1

    .line 581
    .end local v5    # "gpsAvailable":Z
    :cond_4
    const/4 v7, 0x0

    .line 582
    const/4 v5, 0x0

    .line 583
    .restart local v5    # "gpsAvailable":Z
    const/4 v6, 0x0

    .restart local v6    # "graphicsAvailable":Z
    goto :goto_1

    .line 588
    :cond_5
    if-nez v7, :cond_2

    .line 590
    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragmentView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private initSmallLayout(ZZZ)V
    .locals 3
    .param p1, "mediasAvailable"    # Z
    .param p2, "gpsAvailable"    # Z
    .param p3, "graphicsAvailable"    # Z

    .prologue
    .line 346
    const v1, 0x7f0f0137

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    .line 347
    const v1, 0x7f0f0138

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    .line 348
    const v1, 0x7f0f0139

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    .line 349
    const v1, 0x7f0f013a

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    .line 351
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 352
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 353
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 354
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$7;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$7;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$8;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$9;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$9;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$10;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$10;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->updateButtonSelection(I)V

    .line 416
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 417
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const v1, 0x7f0f0135

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mCurrentFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    .line 418
    const-string v1, "fragment summary tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsSummaryFragment;

    .line 419
    const-string v1, "fragment gps tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .line 420
    const-string v1, "fragment graphics tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    .line 421
    const-string v1, "fragment medias tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .line 423
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 424
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 427
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mCurrentFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsFragment;

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 430
    :cond_0
    return-void
.end method

.method private isMediaAvailable(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z
    .locals 5
    .param p1, "academyRun"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 595
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfCaptures(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 597
    .local v0, "numberOfMedias":I
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/MediaManager;->getNumberOfVideos(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    .line 598
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 600
    .end local v0    # "numberOfMedias":I
    :cond_0
    return v1
.end method

.method private refreshShareViews()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsUploading:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSendingEmail:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunProgressBar:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsUploading:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSendingEmail:Z

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 484
    return-void

    :cond_1
    move v0, v2

    .line 481
    goto :goto_0

    :cond_2
    move v1, v2

    .line 482
    goto :goto_1

    .line 483
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private runSentByEmail(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSendingEmail:Z

    .line 624
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->refreshShareViews()V

    .line 626
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkFlightSendFlight()V

    .line 628
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080384

    .line 629
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f0803dc

    .line 630
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803a8

    const/4 v2, 0x0

    .line 631
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 635
    :cond_0
    return-void

    .line 629
    :cond_1
    const v0, 0x7f0801a9

    goto :goto_0
.end method

.method private updateButtonSelection(I)V
    .locals 4
    .param p1, "selectedButtonIndex"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    iput p1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    .line 314
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 315
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 316
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    packed-switch v0, :pswitch_data_0

    .line 337
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSummaryButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 338
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isUserConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGpsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isUserConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private uploadOnFacebook()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isSignedInToFacebook()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsUploading:Z

    .line 511
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->refreshShareViews()V

    .line 512
    return-void

    .line 507
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkFlightGraphShareFacebook()V

    .line 508
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->uploadOnFacebookWithSignedInUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsUploading:Z

    goto :goto_0
.end method

.method private uploadOnFacebookWithSignedInUser()Z
    .locals 5

    .prologue
    .line 515
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getRunInformation(Ljava/lang/String;)Lcom/parrot/freeflight/core/academy/RunInformation;

    move-result-object v2

    .line 517
    .local v2, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-result-object v0

    .line 519
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->createGraphicScreenshot(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v1

    .line 520
    .local v1, "graphicScreenshot":Lcom/parrot/arsdk/armedia/ARMediaObject;
    if-eqz v1, :cond_0

    .line 521
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    const v4, 0x7f080649

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v1, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->uploadOnFacebook(Landroid/app/Activity;Lcom/parrot/arsdk/armedia/ARMediaObject;Ljava/lang/String;)Z

    move-result v3

    .line 525
    .end local v0    # "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .end local v1    # "graphicScreenshot":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->onFacebookActivityResult(IILandroid/content/Intent;)Z

    .line 531
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_run_uuid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    .line 224
    iput v3, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    .line 230
    :goto_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    new-instance v4, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 232
    const v4, 0x7f04002f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->setContentView(I)V

    .line 234
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 235
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 237
    const v4, 0x7f0f0131

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mRootLayout:Landroid/view/View;

    .line 239
    const v4, 0x7f0f0213

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    .line 240
    const v4, 0x7f0f0214

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunProgressBar:Landroid/widget/ProgressBar;

    .line 241
    const v4, 0x7f0f0212

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunSeparator:Landroid/view/View;

    .line 242
    const v4, 0x7f0f0211

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    .line 243
    const v4, 0x7f0f0133

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 244
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v4, 0x7f0f0134

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 246
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 248
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 249
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 250
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 251
    new-instance v4, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$3;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v4, 0x7f0f0135

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 259
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mIsSmall:Z

    .line 271
    :goto_1
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v5, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mFacebookListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/core/academy/AcademyManager;->setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V

    .line 273
    const v4, 0x7f0f0215

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUploadView:Landroid/view/View;

    .line 274
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUploadView:Landroid/view/View;

    new-instance v5, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$4;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$4;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v4, 0x7f0f0216

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .local v1, "facebookButton":Landroid/view/View;
    new-instance v4, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$5;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v5, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity$6;-><init>(Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 296
    return-void

    .line 226
    .end local v0    # "backButton":Landroid/widget/ImageButton;
    .end local v1    # "facebookButton":Landroid/view/View;
    :cond_0
    const-string v4, "extra_run_uuid"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    .line 228
    const-string v4, "extra_selected_button_index"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    goto/16 :goto_0

    .line 261
    .restart local v0    # "backButton":Landroid/widget/ImageButton;
    :cond_1
    const v4, 0x7f0f013b

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediasFragmentView:Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 263
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const v4, 0x7f0f013c

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    iput-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mGraphicsFragment:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGraphicsFragment;

    .line 265
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->isUserConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    .local v3, "shareDetailsVisibility":I
    :goto_2
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunSeparator:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mShareRunGraphicButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 265
    .end local v3    # "shareDetailsVisibility":I
    :cond_2
    const/16 v3, 0x8

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 457
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 460
    return-void
.end method

.method public onMediaClicked(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "medias key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 449
    const-string v1, "position key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string/jumbo v1, "title key"

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 308
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 309
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
    .line 618
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 619
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 620
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 301
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->checkAndAskPermissions()V

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mMediaUpdateListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 303
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 434
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    const-string v0, "extra_run_uuid"

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "extra_selected_button_index"

    iget v1, p0, Lcom/parrot/freeflight/academy/MyFlightsDetailsActivity;->mSelectedButtonIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    return-void
.end method
