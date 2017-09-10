.class public Lcom/parrot/freeflight/update/UpdaterUiController;
.super Ljava/lang/Object;
.source "UpdaterUiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
    }
.end annotation


# instance fields
.field private final mBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCheckingVersionCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mController:Lcom/parrot/freeflight/update/UpdaterController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentProgress:F

.field private mDialog:Landroid/support/v7/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDroneResetCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRootLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSecondLeft:I

.field private final mSendingFileCheckBox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mState:Lcom/parrot/freeflight/update/UpdaterController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUploadInfoShown:Z

.field private mVersionInfoProductName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVersionInfoProductVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVersionInfoTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/parrot/freeflight/update/UpdaterController;Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activityWindow"    # Landroid/view/Window;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "controller"    # Lcom/parrot/freeflight/update/UpdaterController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "backButtonClickListener"    # Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v6, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/update/UpdaterController$State;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    .line 86
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    .line 87
    iput-object p4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    .line 88
    const v6, 0x7f0f01a5

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 89
    const v6, 0x7f0f00b3

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, "titleTextView":Landroid/widget/TextView;
    const v6, 0x7f0f00bb

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    .line 91
    const v6, 0x7f0f01a7

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCheckingVersionCheckBox:Landroid/widget/CheckBox;

    .line 92
    const v6, 0x7f0f01a9

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "checkingVersionTextView":Landroid/widget/TextView;
    const v6, 0x7f0f01a8

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingFileCheckBox:Landroid/widget/CheckBox;

    .line 94
    const v6, 0x7f0f01ab

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 95
    .local v4, "sendingFileTextView":Landroid/widget/TextView;
    const v6, 0x7f0f01aa

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDroneResetCheckBox:Landroid/widget/CheckBox;

    .line 96
    const v6, 0x7f0f01ad

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, "droneResetTextView":Landroid/widget/TextView;
    const v6, 0x7f0f01ac

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    .line 98
    const v6, 0x7f0f01a6

    invoke-virtual {p2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/view/CircularSlider;

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    .line 100
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setFocusable(Z)V

    .line 101
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setEnabled(Z)V

    .line 102
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 103
    .local v3, "otherSymbols":Ljava/text/DecimalFormatSymbols;
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 104
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v6, "#0.0"

    invoke-direct {v1, v6, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 105
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$1;

    invoke-direct {v7, p0, v1}, Lcom/parrot/freeflight/update/UpdaterUiController$1;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/text/DecimalFormat;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setOnValueChangeListener(Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;)V

    .line 114
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$2;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 123
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 124
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 126
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 127
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/parrot/freeflight/update/UpdaterUiController;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 129
    iput-object p3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    .line 130
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$3;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V

    .line 139
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$4;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setProgressListener(Lcom/parrot/freeflight/update/UpdaterController$ProgressListener;)V

    .line 148
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$5;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$5;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/update/UpdaterController;->setProcessingListener(Lcom/parrot/freeflight/update/UpdaterController$ProcessingListener;)V

    .line 162
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v6, p1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 163
    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/update/UpdaterUiController$6;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$6;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/UpdaterController$State;)Lcom/parrot/freeflight/update/UpdaterController$State;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/UpdaterController$State;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController;->showWarningEraseDataDialog(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/update/UpdaterUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingConnectDroneDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/update/UpdaterUiController;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCurrentProgress:F

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/update/UpdaterUiController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/view/CircularSlider;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/update/UpdaterUiController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSecondLeft:I

    return v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/update/UpdaterUiController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSecondLeft:I

    return p1
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/update/UpdaterUiController;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/update/UpdaterUiController;)Lcom/parrot/freeflight/update/UpdaterController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/UpdaterUiController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    return-object v0
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_0
    return-void
.end method

.method private resetUploadInfoVersion()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mUploadInfoShown:Z

    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private showAskDroneReboot()V
    .locals 4

    .prologue
    .line 638
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 642
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 643
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 644
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800c7

    .line 645
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804c8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$27;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$27;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 646
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a4

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$26;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$26;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 653
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 659
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 660
    return-void
.end method

.method private showAskingConnectDroneDialog()V
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 496
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 497
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 498
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08012f

    .line 499
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$16;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$16;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 500
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 507
    return-void
.end method

.method private showAskingDownloading()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 416
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 417
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 418
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 420
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v8, 0x7f0b008f

    invoke-direct {v1, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 421
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v7}, Lcom/parrot/freeflight/update/UpdaterController;->getAvailableUpdateList()Ljava/util/List;

    move-result-object v0

    .line 422
    .local v0, "availableUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 423
    .local v4, "items":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v4

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 424
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 425
    .local v6, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    const-string v8, "%s %s %s"

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v7, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v7}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v13

    const/4 v7, 0x1

    iget-object v10, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    aput-object v10, v9, v7

    const/4 v10, 0x2

    iget-boolean v7, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->downloaded:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v12, 0x7f080626

    .line 426
    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v9, v10

    .line 425
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 428
    .end local v6    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_2
    array-length v7, v4

    new-array v2, v7, [Z

    .line 429
    .local v2, "checked":[Z
    const v7, 0x7f080180

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 430
    invoke-virtual {v7, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0803a8

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$13;

    invoke-direct {v9, p0, v4, v2, v0}, Lcom/parrot/freeflight/update/UpdaterUiController$13;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;[Ljava/lang/String;[ZLjava/util/List;)V

    .line 431
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080111

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$12;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$12;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 443
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/parrot/freeflight/update/UpdaterUiController$11;

    invoke-direct {v8, p0, v2}, Lcom/parrot/freeflight/update/UpdaterUiController$11;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;[Z)V

    .line 449
    invoke-virtual {v7, v4, v2, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 464
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 465
    return-void
.end method

.method private showAskingUploadingDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 510
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 511
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 512
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 514
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v7}, Lcom/parrot/freeflight/update/UpdaterController;->getAvailableUpdateList()Ljava/util/List;

    move-result-object v0

    .line 515
    .local v0, "availableUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Ljava/lang/String;

    .line 516
    .local v3, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v5, v3

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 517
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;

    .line 518
    .local v6, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    const-string v7, "%s\n%s -> %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v9}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->originalVersion:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v6, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v6    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_1
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v8, 0x7f0b008f

    invoke-direct {v1, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 523
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v4, "productToUpdateList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/update/task/AvailableUpdate;>;"
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const v7, 0x7f080593

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 526
    invoke-virtual {v7, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/parrot/freeflight/update/UpdaterUiController$19;

    invoke-direct {v8, p0, v4, v0}, Lcom/parrot/freeflight/update/UpdaterUiController$19;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;Ljava/util/List;)V

    .line 527
    invoke-virtual {v7, v3, v11, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0803a8

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$18;

    invoke-direct {v9, p0, v4}, Lcom/parrot/freeflight/update/UpdaterUiController$18;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Ljava/util/List;)V

    .line 534
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080111

    new-instance v9, Lcom/parrot/freeflight/update/UpdaterUiController$17;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$17;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 545
    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 552
    return-void
.end method

.method private showDeviceWillReboot()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 665
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 667
    :cond_0
    const/4 v1, 0x0

    .line 668
    .local v1, "gamePad":Z
    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/UpdaterController;->getUploadingUpdate()Lcom/parrot/freeflight/update/task/AvailableUpdate;

    move-result-object v2

    .line 669
    .local v2, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    if-eqz v2, :cond_2

    .line 670
    iget-object v4, v2, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER_2:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_SKYCONTROLLER:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v4, v5, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 673
    :cond_2
    :goto_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b008f

    invoke-direct {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 674
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f080590

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 675
    invoke-virtual {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v1, :cond_4

    const v3, 0x7f0804bc

    .line 676
    :goto_1
    invoke-virtual {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0801a4

    new-instance v5, Lcom/parrot/freeflight/update/UpdaterUiController$28;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$28;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 677
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 683
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/UpdaterController;->rebootDrone()V

    .line 684
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 685
    return-void

    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_3
    move v1, v3

    .line 670
    goto :goto_0

    .line 675
    .restart local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4
    const v3, 0x7f08061e

    goto :goto_1
.end method

.method private showDownloadingFailedDialog()V
    .locals 4

    .prologue
    .line 468
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 470
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 472
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 473
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 474
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08017d

    .line 475
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$15;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$15;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 476
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080111

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$14;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$14;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 482
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 489
    return-void
.end method

.method private showNoDroneDialog()V
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 363
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 364
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 365
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a3

    .line 366
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$8;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$8;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 374
    return-void
.end method

.method private showNoInternetDialog()V
    .locals 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 345
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 346
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08012d

    .line 348
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$7;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 349
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 356
    return-void
.end method

.method private showNoUpdateOnServer()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 402
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 403
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 404
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08061d

    .line 405
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$10;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$10;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 406
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 413
    return-void
.end method

.method private showUploadingFailedDialog()V
    .locals 7

    .prologue
    const v6, 0x7f080590

    const v5, 0x7f0803a8

    const/4 v4, 0x0

    .line 597
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 599
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 601
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b008f

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 602
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->isDeviceReadyForUpload()Z

    move-result v1

    .line 603
    .local v1, "deviceConnected":Z
    if-eqz v1, :cond_1

    .line 604
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 605
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08059e

    .line 606
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$24;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$24;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 607
    invoke-virtual {v2, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080111

    new-instance v4, Lcom/parrot/freeflight/update/UpdaterUiController$23;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$23;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 617
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 634
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 635
    return-void

    .line 624
    :cond_1
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 625
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08012f

    .line 626
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$25;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$25;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 627
    invoke-virtual {v2, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showWaitingDialog()V
    .locals 5

    .prologue
    .line 377
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 379
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 381
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f0b008f

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 382
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f080590

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 383
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080121

    .line 384
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080111

    new-instance v4, Lcom/parrot/freeflight/update/UpdaterUiController$9;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$9;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 385
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 391
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 392
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 393
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 395
    return-void
.end method

.method private showWaitingPairingDialog()V
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 581
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 583
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 584
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f080590

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 585
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080455

    .line 586
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080111

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$22;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$22;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 587
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 594
    return-void
.end method

.method private showWarningEraseDataDialog(Lcom/parrot/freeflight/update/task/AvailableUpdate;)V
    .locals 4
    .param p1, "update"    # Lcom/parrot/freeflight/update/task/AvailableUpdate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f080590

    .line 555
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 557
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 559
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 560
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 561
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805cc

    .line 562
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/update/UpdaterUiController$21;

    invoke-direct {v2, p0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController$21;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;Lcom/parrot/freeflight/update/task/AvailableUpdate;)V

    .line 563
    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080111

    new-instance v3, Lcom/parrot/freeflight/update/UpdaterUiController$20;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/update/UpdaterUiController$20;-><init>(Lcom/parrot/freeflight/update/UpdaterUiController;)V

    .line 569
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 576
    return-void
.end method

.method private updateDownloadInfoVersion()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 290
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->getDownloadingProductName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "productName":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->getDownloadingProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "productVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    .line 294
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    :cond_0
    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    .line 296
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v4, 0x7f080645

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    return-void
.end method

.method private updateDroneInfoVersion()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 303
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->getProductName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "productName":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/update/UpdaterController;->getModelVersion()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "productVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    .line 307
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :cond_0
    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    .line 309
    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v4, 0x7f080645

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductName:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoProductVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1
    return-void
.end method

.method private updateSlider()V
    .locals 4

    .prologue
    .line 269
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterUiController$29;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f08017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PROCESSING_UPDATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController;->getCurrentProgress()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    .line 287
    :cond_0
    return-void

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f080191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f0804f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCircularSlider:Lcom/parrot/freeflight/update/view/CircularSlider;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v2, 0x7f080474

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateStep()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v3, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CLOSED:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-eq v0, v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mCheckingVersionCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v0

    sget-object v4, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_CONNECT_DRONE_FOR_UPLOAD:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v4

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mSendingFileCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v3}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v3

    sget-object v4, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_ASKING_REBOOT:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v4}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDroneResetCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 334
    goto :goto_0

    :cond_2
    move v1, v2

    .line 335
    goto :goto_1
.end method

.method private updateUploadInfoVersion()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 321
    iget-boolean v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mUploadInfoShown:Z

    if-nez v1, :cond_0

    .line 322
    iput-boolean v7, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mUploadInfoShown:Z

    .line 323
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController;->getUploadingUpdate()Lcom/parrot/freeflight/update/task/AvailableUpdate;

    move-result-object v0

    .line 325
    .local v0, "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mVersionInfoTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mContext:Landroid/content/Context;

    const v3, 0x7f0806b6

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 327
    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->originalVersion:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, v0, Lcom/parrot/freeflight/update/task/AvailableUpdate;->version:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 326
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .end local v0    # "update":Lcom/parrot/freeflight/update/task/AvailableUpdate;
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 181
    sget-object v0, Lcom/parrot/freeflight/update/UpdaterUiController$29;->$SwitchMap$com$parrot$freeflight$update$UpdaterController$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/update/UpdaterController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoDroneDialog()V

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoInternetDialog()V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showWaitingDialog()V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingDownloading()V

    goto :goto_0

    .line 195
    :pswitch_4
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateDownloadInfoVersion()V

    goto :goto_0

    .line 198
    :pswitch_5
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateDownloadInfoVersion()V

    .line 199
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    goto :goto_0

    .line 202
    :pswitch_6
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateDownloadInfoVersion()V

    .line 203
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showDownloadingFailedDialog()V

    goto :goto_0

    .line 206
    :pswitch_7
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->resetUploadInfoVersion()V

    .line 207
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 208
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingUploadingDialog()V

    goto :goto_0

    .line 211
    :pswitch_8
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateDroneInfoVersion()V

    .line 212
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 213
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoUpdateOnServer()V

    goto :goto_0

    .line 216
    :pswitch_9
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 217
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateDroneInfoVersion()V

    .line 218
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showNoUpdateOnServer()V

    goto :goto_0

    .line 221
    :pswitch_a
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 222
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showAskingConnectDroneDialog()V

    goto :goto_0

    .line 225
    :pswitch_b
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateUploadInfoVersion()V

    .line 230
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    goto :goto_0

    .line 233
    :pswitch_c
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateUploadInfoVersion()V

    .line 234
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showWaitingPairingDialog()V

    goto :goto_0

    .line 237
    :pswitch_d
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateUploadInfoVersion()V

    .line 238
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showUploadingFailedDialog()V

    goto :goto_0

    .line 241
    :pswitch_e
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateUploadInfoVersion()V

    .line 242
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 243
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateSlider()V

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 248
    :pswitch_f
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateUploadInfoVersion()V

    .line 249
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->updateStep()V

    .line 250
    invoke-direct {p0}, Lcom/parrot/freeflight/update/UpdaterUiController;->showDeviceWillReboot()V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mController:Lcom/parrot/freeflight/update/UpdaterController;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/update/UpdaterController;->setStateListener(Lcom/parrot/freeflight/update/UpdaterController$StateListener;)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 178
    return-void
.end method

.method public onBackPressed(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mState:Lcom/parrot/freeflight/update/UpdaterController$State;

    sget-object v1, Lcom/parrot/freeflight/update/UpdaterController$State;->STATE_PROCESSING_UPDATE:Lcom/parrot/freeflight/update/UpdaterController$State;

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdaterUiController;->mOnBackButtonClickListener:Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/update/UpdaterUiController$OnBackButtonClickListener;->onBackButtonClick(Z)V

    .line 260
    :cond_0
    return-void
.end method
