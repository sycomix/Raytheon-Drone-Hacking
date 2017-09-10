.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;
.super Ljava/lang/Object;
.source "AcademyLogInActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity;->passwordForgotten(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$emailEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/support/v7/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->val$dialog:Landroid/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->val$emailEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 354
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->val$dialog:Landroid/support/v7/app/AlertDialog;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$8;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$400(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    .line 357
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
