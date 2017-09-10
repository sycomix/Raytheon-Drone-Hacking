.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$1;
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
    .line 269
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$1;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 273
    return-void
.end method
