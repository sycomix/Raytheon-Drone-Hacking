.class Lcom/parrot/freeflight/academy/ProfileEditActivity$3;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

.field final synthetic val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrollStateChanged(I)V

    .line 132
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 112
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageSelected(I)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$100(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$600(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$100(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->isSaveButtonDisplayed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->access$800(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 126
    :cond_0
    return-void

    .line 120
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
