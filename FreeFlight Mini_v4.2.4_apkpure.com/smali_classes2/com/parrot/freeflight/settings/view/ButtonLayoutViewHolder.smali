.class public Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "ButtonLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field public final mButtonView:Landroid/widget/Button;

.field public final mSettingsNameTextView:Landroid/widget/TextView;


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
    .line 23
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f0f01b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    .line 27
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 39
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->getButtonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->mButtonSettingsEntry:Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 50
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;)V

    return-void
.end method
