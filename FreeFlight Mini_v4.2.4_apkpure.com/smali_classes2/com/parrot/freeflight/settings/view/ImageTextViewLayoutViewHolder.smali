.class public Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "ImageTextViewLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field public final mSettingsNameTextView:Landroid/widget/TextView;

.field public final mValueImage:Landroid/widget/ImageView;

.field public final mValueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    const v1, 0x7f0f0184

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0f01eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 24
    const v1, 0x7f0f0208

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueImage:Landroid/widget/ImageView;

    .line 26
    new-instance v1, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 34
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 35
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->mValueImage:Landroid/widget/ImageView;

    iget v1, p1, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->mImageRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;)V

    return-void
.end method
