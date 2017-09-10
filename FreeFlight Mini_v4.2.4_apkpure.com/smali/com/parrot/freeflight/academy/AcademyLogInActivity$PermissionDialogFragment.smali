.class public Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;
.super Landroid/app/DialogFragment;
.source "AcademyLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0803bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 268
    const v1, 0x7f0803bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 269
    const v1, 0x7f0805ea

    new-instance v2, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$1;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    const v1, 0x7f080397

    new-instance v2, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment$2;-><init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity$PermissionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
