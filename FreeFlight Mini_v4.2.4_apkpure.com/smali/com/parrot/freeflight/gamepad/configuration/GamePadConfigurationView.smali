.class public Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
.super Landroid/widget/FrameLayout;
.source "GamePadConfigurationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;,
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$JoystickType;
    }
.end annotation


# static fields
.field public static final JOYSTICK_NAME_EXTRA:Ljava/lang/String; = "JOYSTICK_NAME_EXTRA"

.field public static final JOYSTICK_TYPE_EXTRA:Ljava/lang/String; = "JOYSTICK_TYPE_EXTRA"

.field public static final LEFT_MAIN_JOYSTICK:I = 0x1

.field public static final NO_JOYSTICK:I = 0x0

.field public static final RIGHT_MAIN_JOYSTICK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GamePadConfView"


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAlternateMappingRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCommands:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

.field private mCurrentCommandChoice:I

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadImageView:Landroid/widget/ImageView;

.field private mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJoysticksMappingView:Landroid/widget/LinearLayout;

.field private final mLeftJoystickImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMainMappingRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMapperListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

.field private final mMappingLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOpened:Z

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRightJoystickImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSwitchMappingRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapperListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    .line 91
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 173
    const v1, 0x7f04005f

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 175
    const v1, 0x7f0f01e6

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMappingLayout:Landroid/view/View;

    .line 176
    const v1, 0x7f0f01ea

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 177
    .local v0, "mappingRecyclerView":Landroid/support/v7/widget/RecyclerView;
    const v1, 0x7f0f01e0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    .line 178
    const v1, 0x7f0f01e1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mJoysticksMappingView:Landroid/widget/LinearLayout;

    .line 179
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-direct {v1, p1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .line 181
    const v1, 0x7f0f01e7

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mSwitchMappingRadioGroup:Landroid/widget/RadioGroup;

    .line 182
    const v1, 0x7f0f01e8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMainMappingRadioButton:Landroid/widget/RadioButton;

    .line 183
    const v1, 0x7f0f01e9

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mAlternateMappingRadioButton:Landroid/widget/RadioButton;

    .line 184
    iput v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    .line 185
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->updateMappingSwitch()V

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->registerListener(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;)V

    .line 204
    const v1, 0x7f0f01e2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLeftJoystickImageView:Landroid/widget/ImageView;

    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLeftJoystickImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v1, 0x7f0f01e5

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mRightJoystickImageView:Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mRightJoystickImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v1, 0x7f0f01e4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryTextView:Landroid/widget/TextView;

    .line 209
    const v1, 0x7f0f01e3

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryImageView:Landroid/widget/ImageView;

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 213
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 214
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 217
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setFocusableInTouchMode(Z)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    return v0
.end method

.method static synthetic access$1002(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCommands:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapperListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private startJoystickSensibilityActivity(ILjava/lang/String;)V
    .locals 3
    .param p1, "joystickType"    # I
    .param p2, "joystickName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "joystickSensibilityActivityIntent":Landroid/content/Intent;
    const-string v1, "JOYSTICK_TYPE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v1, "JOYSTICK_NAME_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v1, "JOYSTICK_PARAMS_EXTRA"

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->getGamePadJoystickParams()Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 399
    return-void
.end method

.method private startJoystickSettingsActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLeftJoystickImageView:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_1

    .line 378
    const/4 v1, 0x1

    .line 379
    .local v1, "joystickType":I
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getLeftJoystickName()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "joystickName":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    instance-of v2, v2, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    if-eqz v2, :cond_2

    .line 385
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->startPresetJoystickSensibilityActivity(ILjava/lang/String;)V

    .line 390
    .end local v0    # "joystickName":Ljava/lang/String;
    .end local v1    # "joystickType":I
    :cond_0
    :goto_1
    return-void

    .line 381
    :cond_1
    const/4 v1, 0x2

    .line 382
    .restart local v1    # "joystickType":I
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getRightJoystickName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "joystickName":Ljava/lang/String;
    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->startJoystickSensibilityActivity(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private startPresetJoystickSensibilityActivity(ILjava/lang/String;)V
    .locals 3
    .param p1, "joystickType"    # I
    .param p2, "joystickName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v0, "presetJoystickSensibilityActivityIntent":Landroid/content/Intent;
    const-string v1, "JOYSTICK_TYPE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "JOYSTICK_NAME_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "PRODUCT_EXTRA"

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private updateGamePadImage()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getMappingImageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 311
    .local v0, "mappingImageId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    .end local v0    # "mappingImageId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateJoystickParamsVisibility()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mJoysticksMappingView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private updateMappingSwitch()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_WINGX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMainMappingRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f080656

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mAlternateMappingRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f080655

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mSwitchMappingRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mSwitchMappingRadioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mSwitchMappingRadioGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addGamePadStateListener()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 330
    :cond_0
    return-void
.end method

.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 507
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 508
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mBatteryImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;)V

    .line 509
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMainMappingRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mAlternateMappingRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 511
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mLeftJoystickImageView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mRightJoystickImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->resetOpenedInputList()V

    .line 369
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->startJoystickSettingsActivity(Landroid/view/View;)V

    .line 371
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 493
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 498
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->onJoystickEvent(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 473
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 483
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 340
    instance-of v1, p1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;

    if-nez v1, :cond_0

    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 354
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 345
    check-cast v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;

    .line 346
    .local v0, "ss":Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 348
    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    .line 349
    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    if-eqz v1, :cond_1

    .line 350
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 358
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 359
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 361
    .local v0, "ss":Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;
    iget-boolean v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    invoke-static {v0, v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;->access$1202(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$SavedState;Z)Z

    .line 362
    return-object v0
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 503
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeGamePadStateListener()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 336
    :cond_0
    return-void
.end method

.method public resetPreferences()V
    .locals 7

    .prologue
    .line 418
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->reset()V

    .line 420
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->resetOpenedInputList()V

    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v6

    .line 425
    .local v6, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCommands:Ljava/util/List;

    invoke-virtual {v0, v1, v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 428
    .end local v6    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_0
    return-void
.end method

.method public saveGamePadPreferences(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V
    .locals 1
    .param p1, "gamePadJoystickParams"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;->saveJoystickParams(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 324
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 282
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mActivity:Landroid/app/Activity;

    .line 283
    return-void
.end method

.method public setGamepad(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 9
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 288
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    .line 289
    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 290
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->addGamePadStateListener()V

    .line 291
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->updateJoystickParamsVisibility()V

    .line 292
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->updateGamePadImage()V

    .line 293
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->updateMappingSwitch()V

    .line 294
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v1

    invoke-static {p2, v0, v8, v1}, Lcom/parrot/freeflight/gamepad/command/CommandListFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCommands:Ljava/util/List;

    .line 295
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setResourceDescriptor(Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;)V

    .line 296
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setInputsOwner(Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;)V

    .line 297
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    instance-of v0, v0, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    if-nez v0, :cond_2

    .line 298
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v2

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    move-object v3, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    .line 299
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCurrentCommandChoice:I

    const/4 v4, 0x2

    move-object v2, p2

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v7

    .line 300
    .local v7, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    new-instance v0, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    invoke-direct {v0, v1, v7, v2}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    .line 301
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMapperListener:Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->registerListener(Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;)V

    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mConfigurationMappingAdapter:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mCommands:Ljava/util/List;

    invoke-virtual {v0, v1, v7}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 306
    .end local v7    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :goto_2
    return-void

    :cond_0
    move-object v0, v5

    .line 295
    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 296
    goto :goto_1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;->getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadPreferences:Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    goto :goto_2
.end method

.method public switchToConnectedMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMappingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mJoysticksMappingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public switchToDisconnectedMode()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mMappingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mJoysticksMappingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mGamePadImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    return-void
.end method

.method public switchVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->clearAnimation()V

    .line 251
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    .line 252
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->mOpened:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$5;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$5;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 267
    :goto_1
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$6;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
