.class Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;
.super Ljava/lang/Object;
.source "ProfileEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->addAlertDialogButton(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;

    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->val$requestCode:I

    invoke-interface {v0, v1, p2}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;->onDialogClick(II)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;

    iget v1, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;->val$requestCode:I

    invoke-interface {v0, v1, p2}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;->onDialogClick(II)V

    goto :goto_0
.end method
