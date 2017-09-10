.class public abstract Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "JoystickSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final mCheckbox:Landroid/widget/CheckBox;

.field protected final mCheckboxAutoRecord:Landroid/widget/CheckBox;

.field protected final mCheckboxCamera:Landroid/widget/CheckBox;

.field protected final mImageView:Landroid/widget/ImageView;

.field protected mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

.field protected final mSettingsNameTextView:Landroid/widget/TextView;

.field protected final mTextViewAutoRecord:Landroid/widget/TextView;

.field protected final mTextViewCamera:Landroid/widget/TextView;

.field protected final mTextViewGyroscopeDescription:Landroid/widget/TextView;

.field protected final mTextViewLeftJogDescription:Landroid/widget/TextView;

.field protected final mTextViewRightJogDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v5, 0x7f0e0102

    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 46
    const v3, 0x7f0f01af

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0f006c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 48
    const v3, 0x7f0f0225

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 49
    const v3, 0x7f0f0228

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxCamera:Landroid/widget/CheckBox;

    .line 50
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxCamera:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    const v3, 0x7f0f022a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    .line 62
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    const v3, 0x7f0f0227

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

    .line 73
    const v3, 0x7f0f022c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0f0229

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewCamera:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f0f022b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewAutoRecord:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0f0224

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    .line 77
    const v3, 0x7f0f0226

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 87
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0201c1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 89
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintCheckBoxWithStateList(Landroid/widget/CheckBox;Landroid/content/res/ColorStateList;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/CheckBox;)V

    .line 102
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxCamera:Landroid/widget/CheckBox;

    invoke-virtual {p2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/CheckBox;)V

    .line 103
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mCheckboxAutoRecord:Landroid/widget/CheckBox;

    invoke-virtual {p2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/CheckBox;)V

    .line 104
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewCamera:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewAutoRecord:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    return-void

    .line 84
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method


# virtual methods
.method public abstract update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
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
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V

    return-void
.end method

.method protected updateDescriptionsTextView(IIZ)V
    .locals 2
    .param p1, "firstDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "secondDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "isLeftHanded"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/JoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .end local p2    # "secondDescription":I
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-void

    .restart local p2    # "secondDescription":I
    :cond_0
    move v0, p2

    .line 116
    goto :goto_0

    :cond_1
    move p2, p1

    .line 117
    goto :goto_1
.end method
