.class public Lcom/parrot/freeflight/util/ui/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFont(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-static {p0}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 21
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 22
    return-void
.end method

.method public static applyFont(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "variant"    # I

    .prologue
    .line 25
    invoke-static {p0, p2}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFontVariant(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 26
    .local v0, "typeface":Landroid/graphics/Typeface;
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 27
    return-void
.end method

.method private static applyFont(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 34
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 37
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    :cond_1
    :goto_1
    return-void

    .line 38
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    instance-of v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    if-eqz v2, :cond_1

    .line 39
    check-cast p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method
