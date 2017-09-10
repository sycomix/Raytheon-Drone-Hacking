.class public Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "JoystickSensibilityActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;,
        Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$IndexType;
    }
.end annotation


# static fields
.field public static final INDEX_EXPONENTIAL:I = 0x1

.field public static final INDEX_LINEAR:I = 0x0

.field public static final JOYSTICK_PARAMS_EXTRA:Ljava/lang/String; = "JOYSTICK_PARAMS_EXTRA"

.field public static final REQUEST_CODE:I = 0x64


# instance fields
.field private mCurrentJsType:I

.field private mCurveResetValues:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mImitateImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastShowingJsType:I

.field private mLeftExponentialRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLeftIndexChecked:I

.field private mLeftLinearRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLeftRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLinkedDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRightExponentialRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRightIndexChecked:I

.field private mRightLinearRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRightRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUnlinkedDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 78
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    .line 80
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLastShowingJsType:I

    .line 82
    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    .line 84
    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->resetSensibilitySettings(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->applyUiTheme()V

    return-void
.end method

.method private applyFontToView(I)V
    .locals 1
    .param p1, "viewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftLinearRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftLinearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftExponentialRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftExponentialRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightLinearRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightLinearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightExponentialRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightExponentialRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_5

    .line 580
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setLineColor(I)V

    .line 582
    :cond_5
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_6

    .line 583
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setLineColor(I)V

    .line 585
    :cond_6
    return-void
.end method

.method private displaySelectedCurveView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 220
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v2, :cond_1

    .line 223
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v2, v4, :cond_4

    .line 224
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameterAtIndex(I)I

    move-result v0

    .line 228
    .local v0, "selectedXFilter":I
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0f01d3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 235
    .end local v0    # "selectedXFilter":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v2, :cond_3

    .line 237
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v2, v4, :cond_6

    .line 238
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameterAtIndex(I)I

    move-result v1

    .line 242
    .local v1, "selectedYFilter":I
    :goto_2
    if-eq v1, v4, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0f01db

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 250
    .end local v1    # "selectedYFilter":I
    :cond_3
    :goto_3
    return-void

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameterAtIndex(I)I

    move-result v0

    .restart local v0    # "selectedXFilter":I
    goto :goto_0

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0f01d4

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 240
    .end local v0    # "selectedXFilter":I
    :cond_6
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameterAtIndex(I)I

    move-result v1

    .restart local v1    # "selectedYFilter":I
    goto :goto_2

    .line 246
    :cond_7
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0f01dc

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3
.end method

.method private getCurveTypeFromCheckId(I)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 3
    .param p1, "checkedId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 407
    sparse-switch p1, :sswitch_data_0

    .line 421
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 422
    .local v0, "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iput v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    .line 425
    :goto_0
    return-object v0

    .line 409
    .end local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :sswitch_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 410
    .restart local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    goto :goto_0

    .line 413
    .end local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :sswitch_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 414
    .restart local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iput v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    goto :goto_0

    .line 417
    .end local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :sswitch_2
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 418
    .restart local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iput v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    goto :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f01d3 -> :sswitch_0
        0x7f0f01d4 -> :sswitch_1
        0x7f0f01db -> :sswitch_2
    .end sparse-switch
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 214
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 216
    :cond_0
    return-object v0
.end method

.method private getJoystickName(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    const-string v2, "JOYSTICK_NAME_EXTRA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 266
    const v2, 0x7f0f01ce

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, "joystickNameTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0    # "joystickNameTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getJoystickSensibilities(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    const-string v3, "JOYSTICK_PARAMS_EXTRA"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 254
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getSensibilities()[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;

    move-result-object v2

    .line 256
    .local v2, "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 257
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "sensibilities":[Lcom/parrot/freeflight/gamepad/preferences/GamePadSensibility;
    :cond_0
    return-void
.end method

.method private getJoystickType(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 274
    const-string v2, "JOYSTICK_TYPE_EXTRA"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "type":I
    if-ltz v0, :cond_2

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    .line 277
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 278
    :cond_0
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    .line 279
    if-eqz v0, :cond_2

    .line 280
    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLastShowingJsType:I

    if-eq v0, v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-direct {p0, v1, v0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-direct {p0, v1, v0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 284
    :cond_1
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLastShowingJsType:I

    .line 287
    :cond_2
    return-void
.end method

.method private getValueFromImitatedView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v0, :cond_0

    .line 291
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v0, v3, :cond_1

    .line 292
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 293
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x3

    .line 295
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x5

    .line 298
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x7

    .line 300
    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private refreshCurveType(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Landroid/widget/RadioGroup;)V
    .locals 3
    .param p1, "curveView"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "curveType"    # Landroid/widget/RadioGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 328
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 330
    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$5;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getCurveType()Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 338
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v1, :cond_2

    const v0, 0x7f0f01d4

    .line 343
    .local v0, "idToCheck":I
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 345
    .end local v0    # "idToCheck":I
    :cond_0
    return-void

    .line 332
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v1, :cond_1

    const v0, 0x7f0f01d3

    .line 335
    .restart local v0    # "idToCheck":I
    :goto_1
    goto :goto_0

    .line 332
    .end local v0    # "idToCheck":I
    :cond_1
    const v0, 0x7f0f01db

    goto :goto_1

    .line 338
    :cond_2
    const v0, 0x7f0f01dc

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V
    .locals 5
    .param p1, "curveGridView"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "indexType"    # I

    .prologue
    const/4 v4, 0x1

    .line 348
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v2, :cond_0

    .line 351
    packed-switch p2, :pswitch_data_0

    .line 362
    if-ne p3, v4, :cond_2

    .line 363
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "axisXParameter":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "axisYParameter":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v2, :cond_3

    .line 373
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithData(Ljava/lang/String;)Z

    .line 378
    .end local v0    # "axisXParameter":Ljava/lang/String;
    .end local v1    # "axisYParameter":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 353
    :pswitch_0
    if-ne p3, v4, :cond_1

    .line 354
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0    # "axisXParameter":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "axisYParameter":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "axisXParameter":Ljava/lang/String;
    .end local v1    # "axisYParameter":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    .restart local v0    # "axisXParameter":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "axisYParameter":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v0    # "axisXParameter":Ljava/lang/String;
    .end local v1    # "axisYParameter":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .restart local v0    # "axisXParameter":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->getParameter(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "axisYParameter":Ljava/lang/String;
    goto :goto_0

    .line 374
    :cond_3
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v2, :cond_0

    .line 375
    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithData(Ljava/lang/String;)Z

    goto :goto_1

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetSensibilitySettings(Z)V
    .locals 7
    .param p1, "isLeftReset"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v0, :cond_0

    .line 307
    if-eqz p1, :cond_2

    .line 308
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v0, v2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v4, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v6, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v0, v2, :cond_3

    .line 317
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v5, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurveResetValues:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private saveCurveViewChanges(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V
    .locals 4
    .param p1, "curveGridView"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "axisFilter":Ljava/lang/String;
    const/4 v1, 0x0

    .line 383
    .local v1, "axisFilterKey":I
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getAxisFilterSaveString()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v3, v2, :cond_3

    .line 386
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 399
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v2, v1, v0}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setParameter(ILjava/lang/String;)V

    .line 402
    :cond_1
    return-void

    .line 386
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 388
    :cond_3
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    if-nez v2, :cond_4

    const/4 v1, 0x4

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_1

    .line 390
    :cond_5
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getAxisFilterSaveString()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v3, v2, :cond_7

    .line 393
    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    if-nez v3, :cond_6

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_2

    .line 395
    :cond_7
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    if-nez v2, :cond_8

    const/4 v1, 0x5

    :goto_3
    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_3
.end method

.method private saveFilterSelection(I)V
    .locals 7
    .param p1, "checkedId"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 431
    iget v6, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 432
    .local v1, "isLeftJoystick":Z
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 447
    if-eqz v1, :cond_8

    move v0, v4

    .line 448
    .local v0, "index":I
    :goto_1
    if-eqz v1, :cond_9

    move v2, v5

    .line 451
    .local v2, "value":I
    :goto_2
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    if-eqz v3, :cond_0

    .line 452
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v3, v0, v2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;->setSelectedParameter(II)V

    .line 454
    :cond_0
    return-void

    .end local v0    # "index":I
    .end local v1    # "isLeftJoystick":Z
    .end local v2    # "value":I
    :cond_1
    move v1, v2

    .line 431
    goto :goto_0

    .line 434
    .restart local v1    # "isLeftJoystick":Z
    :sswitch_0
    if-eqz v1, :cond_2

    move v0, v2

    .line 435
    .restart local v0    # "index":I
    :goto_3
    if-eqz v1, :cond_3

    .line 436
    .restart local v2    # "value":I
    :goto_4
    goto :goto_2

    .end local v0    # "index":I
    .end local v2    # "value":I
    :cond_2
    move v0, v3

    .line 434
    goto :goto_3

    .line 435
    .restart local v0    # "index":I
    :cond_3
    const/4 v2, 0x4

    goto :goto_4

    .line 438
    .end local v0    # "index":I
    :sswitch_1
    if-eqz v1, :cond_4

    move v0, v2

    .line 439
    .restart local v0    # "index":I
    :goto_5
    if-eqz v1, :cond_5

    move v2, v3

    .line 440
    .restart local v2    # "value":I
    :goto_6
    goto :goto_2

    .end local v0    # "index":I
    .end local v2    # "value":I
    :cond_4
    move v0, v3

    .line 438
    goto :goto_5

    .line 439
    .restart local v0    # "index":I
    :cond_5
    const/4 v2, 0x6

    goto :goto_6

    .line 442
    .end local v0    # "index":I
    :sswitch_2
    if-eqz v1, :cond_6

    move v0, v4

    .line 443
    .restart local v0    # "index":I
    :goto_7
    if-eqz v1, :cond_7

    move v2, v4

    .line 444
    .restart local v2    # "value":I
    :goto_8
    goto :goto_2

    .end local v0    # "index":I
    .end local v2    # "value":I
    :cond_6
    move v0, v5

    .line 442
    goto :goto_7

    .line 443
    .restart local v0    # "index":I
    :cond_7
    const/4 v2, 0x5

    goto :goto_8

    .end local v0    # "index":I
    :cond_8
    move v0, v5

    .line 447
    goto :goto_1

    .line 448
    .restart local v0    # "index":I
    :cond_9
    const/4 v2, 0x7

    goto :goto_2

    .line 432
    :sswitch_data_0
    .sparse-switch
        0x7f0f01d3 -> :sswitch_0
        0x7f0f01d4 -> :sswitch_1
        0x7f0f01db -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "JOYSTICK_PARAMS_EXTRA"

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mGamePadJoystickParams:Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v6, 0x1

    .line 463
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_2

    .line 464
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getCurveTypeFromCheckId(I)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    .line 465
    .local v0, "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;)Z

    .line 466
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    iget v5, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 467
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveFilterSelection(I)V

    .line 468
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->isImitateViewAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    iget v5, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 470
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftIndexChecked:I

    if-ne v3, v6, :cond_1

    const v3, 0x7f0f01dc

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 473
    .local v2, "rightCurveViewRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 474
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveFilterSelection(I)V

    .line 490
    .end local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .end local v2    # "rightCurveViewRadioButton":Landroid/widget/RadioButton;
    :cond_0
    :goto_1
    return-void

    .line 470
    .restart local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :cond_1
    const v3, 0x7f0f01db

    goto :goto_0

    .line 476
    .end local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_0

    .line 477
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getCurveTypeFromCheckId(I)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    .line 478
    .restart local v0    # "curveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;)Z

    .line 479
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveFilterSelection(I)V

    .line 480
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    iget v5, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 481
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->isImitateViewAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mCurrentJsType:I

    iget v5, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    invoke-direct {p0, v3, v4, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveView(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;II)V

    .line 483
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightIndexChecked:I

    if-ne v3, v6, :cond_3

    const v3, 0x7f0f01d4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 486
    .local v1, "leftCurveViewRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 487
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveFilterSelection(I)V

    goto :goto_1

    .line 483
    .end local v1    # "leftCurveViewRadioButton":Landroid/widget/RadioButton;
    :cond_3
    const v3, 0x7f0f01d3

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->isImitateViewAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getValueFromImitatedView()V

    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->startImitate(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    .line 514
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveType(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Landroid/widget/RadioGroup;)V

    .line 515
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->refreshCurveType(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Landroid/widget/RadioGroup;)V

    .line 516
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLinkedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->stopImitate()V

    .line 519
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mUnlinkedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0f01cd

    .line 92
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v3, 0x7f04005d

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getJoystickSensibilities(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRootView:Landroid/view/View;

    .line 100
    const v3, 0x7f0f01d5

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 101
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3, p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->addListener(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;)V

    .line 105
    :cond_0
    const v3, 0x7f0f01dd

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 106
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3, p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->addListener(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;)V

    .line 110
    :cond_1
    const v3, 0x7f02012f

    const v4, 0x7f0e00ec

    invoke-direct {p0, v3, v4}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLinkedDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    const v3, 0x7f020135

    const v4, 0x7f0e00e5

    invoke-direct {p0, v3, v4}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mUnlinkedDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    const v3, 0x7f0f01d6

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    .line 114
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mUnlinkedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mImitateImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    const v3, 0x7f0f01d1

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    .local v1, "leftCurveReset":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 121
    new-instance v3, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_3
    const v3, 0x7f0f01d9

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 134
    .local v2, "rightCurveReset":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 135
    new-instance v3, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_4
    const v3, 0x7f0f00bb

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 148
    .local v0, "backButton":Landroid/widget/ImageButton;
    if-eqz v0, :cond_6

    .line 149
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_5

    .line 150
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_5
    new-instance v3, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_6
    const v3, 0x7f0f01d2

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    .line 161
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_7

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 165
    :cond_7
    const v3, 0x7f0f01d3

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftLinearRadioButton:Landroid/widget/RadioButton;

    .line 166
    const v3, 0x7f0f01d4

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mLeftExponentialRadioButton:Landroid/widget/RadioButton;

    .line 168
    const v3, 0x7f0f01da

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    .line 169
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_8

    .line 170
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 173
    :cond_8
    const v3, 0x7f0f01db

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightLinearRadioButton:Landroid/widget/RadioButton;

    .line 174
    const v3, 0x7f0f01dc

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mRightExponentialRadioButton:Landroid/widget/RadioButton;

    .line 176
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getJoystickType(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->getJoystickName(Landroid/content/Intent;)V

    .line 179
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->displaySelectedCurveView()V

    .line 181
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 182
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v4, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 189
    invoke-direct {p0, v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->applyFontToView(I)V

    .line 190
    return-void
.end method

.method public onCurveChange(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 1
    .param p1, "view"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expoType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveCurveViewChanges(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 499
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->isImitateViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    :goto_0
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->saveCurveViewChanges(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 502
    :cond_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 559
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 560
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 561
    return-void
.end method
