.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$2;
.super Ljava/lang/Object;
.source "AcademyLogInActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$2;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$2;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$300(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    .line 279
    return-void
.end method
