.class public Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProfileEditDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$OnClickListener;
    }
.end annotation


# static fields
.field private static final ARG_HAS_NEGATIVE_BUTTON:Ljava/lang/String; = "hasNegativeButton"

.field private static final ARG_HAS_POSITIVE_BUTTON:Ljava/lang/String; = "hasPositiveButton"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mAlertViewDialog:Landroid/app/AlertDialog;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "hasPositiveButton"    # Z
    .param p3, "hasNegativeButton"    # Z
    .param p4, "requestCode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;-><init>()V

    .line 29
    .local v1, "dialogFragment":Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "hasPositiveButton"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    const-string v2, "hasNegativeButton"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    const-string v2, "requestCode"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method protected final addAlertDialogButton(ZI)V
    .locals 4
    .param p1, "isPositive"    # Z
    .param p2, "requestCode"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz p1, :cond_2

    const v1, 0x7f0803a8

    :goto_1
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;

    invoke-direct {v3, p0, p2}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;I)V

    .line 80
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 81
    :cond_2
    const v1, 0x7f080111

    goto :goto_1
.end method

.method protected final initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 64
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 65
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b008f

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 66
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    .line 69
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "title":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "message":Ljava/lang/String;
    const-string v6, "hasPositiveButton"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 46
    .local v2, "hasPositiveButton":Z
    const-string v6, "hasNegativeButton"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 47
    .local v1, "hasNegativeButton":Z
    const-string v6, "requestCode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 48
    .local v4, "requestCode":I
    invoke-virtual {p0, v5, v3}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz v2, :cond_0

    .line 50
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->addAlertDialogButton(ZI)V

    .line 52
    :cond_0
    if-eqz v1, :cond_1

    .line 53
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->addAlertDialogButton(ZI)V

    .line 57
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/academy/ProfileEditDialogFragment;->mAlertViewDialog:Landroid/app/AlertDialog;

    return-object v6
.end method
