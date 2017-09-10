.class Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;
.super Landroid/widget/ArrayAdapter;
.source "ProfileEditPage3View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage3View;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage3View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage3View;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage3View;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage3View;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_0

    move-object v0, v1

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "label":Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditPage3View$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    .end local v0    # "label":Landroid/widget/TextView;
    :cond_0
    return-object v1
.end method
