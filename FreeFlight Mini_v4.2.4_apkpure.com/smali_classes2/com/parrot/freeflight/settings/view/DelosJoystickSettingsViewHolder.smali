.class public Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;
.source "DelosJoystickSettingsViewHolder.java"


# instance fields
.field public final mCenterRadioButton:Landroid/widget/RadioButton;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field public final mRightRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 26
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mHandler:Landroid/os/Handler;

    .line 31
    const v1, 0x7f0f0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 32
    const v1, 0x7f0f0221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    .line 33
    const v1, 0x7f0f0222

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 34
    const v1, 0x7f0f021f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f080433

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 37
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f080431

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 38
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f080432

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/RadioButton;)V

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private setCameraSettingsVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    :cond_1
    move v2, v1

    .line 160
    goto :goto_1
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
    .locals 10
    .param p1    # Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/4 v9, 0x4

    const v8, 0x7f08040f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f080410

    .line 80
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 81
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isLeftHanded()Z

    move-result v2

    .line 82
    .local v2, "isLeftHanded":Z
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCheckboxCamera:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isAutoRecordEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isCameraPreviewEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mTextViewAutoRecord:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const v3, 0x7f0201b5

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {p0, v5, v8, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 92
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getControllerType()I

    move-result v0

    .line 93
    .local v0, "controllerType":I
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isInHydrofoilMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 94
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->hasHydrofoilGazJoystick()Z

    move-result v1

    .line 95
    .local v1, "hasHydrofoilGazJoystick":Z
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 96
    packed-switch v0, :pswitch_data_0

    .line 124
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0222

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 125
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    const v3, 0x7f0201b4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    invoke-virtual {p0, v5, v8, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 127
    invoke-direct {p0, v7}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    .line 156
    .end local v1    # "hasHydrofoilGazJoystick":Z
    :goto_2
    return-void

    .line 90
    .end local v0    # "controllerType":I
    :cond_1
    const v3, 0x7f0201b2

    goto :goto_0

    .line 98
    .restart local v0    # "controllerType":I
    .restart local v1    # "hasHydrofoilGazJoystick":Z
    :pswitch_0
    if-nez v1, :cond_2

    .line 101
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0220

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 110
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const v3, 0x7f0201d4

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    const v3, 0x7f0806ab

    invoke-virtual {p0, v5, v3, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 112
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    goto :goto_2

    .line 110
    :cond_3
    const v3, 0x7f0201d3

    goto :goto_3

    .line 116
    :pswitch_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0221

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 117
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v3, 0x7f02005e

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    const v3, 0x7f080411

    invoke-virtual {p0, v5, v3, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 119
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    goto :goto_2

    .line 117
    :cond_4
    const v3, 0x7f02005d

    goto :goto_4

    .line 125
    :cond_5
    const v3, 0x7f0201b3

    goto :goto_1

    .line 131
    .end local v1    # "hasHydrofoilGazJoystick":Z
    :cond_6
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 132
    packed-switch v0, :pswitch_data_1

    .line 149
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0222

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 150
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    const v3, 0x7f0201b5

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-virtual {p0, v5, v8, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 152
    invoke-direct {p0, v7}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    goto :goto_2

    .line 134
    :pswitch_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0220

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 135
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    const v3, 0x7f0201d5

    :goto_6
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    const v3, 0x7f0806ab

    invoke-virtual {p0, v5, v3, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 137
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    goto/16 :goto_2

    .line 135
    :cond_7
    const v3, 0x7f0201d2

    goto :goto_6

    .line 141
    :pswitch_3
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0f0221

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 142
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    const v3, 0x7f02005f

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    const v3, 0x7f080411

    invoke-virtual {p0, v5, v3, v2}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 144
    invoke-direct {p0, v6}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->setCameraSettingsVisibility(Z)V

    goto/16 :goto_2

    .line 142
    :cond_8
    const v3, 0x7f02005c

    goto :goto_7

    .line 150
    :cond_9
    const v3, 0x7f0201b2

    goto :goto_5

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V

    return-void
.end method
