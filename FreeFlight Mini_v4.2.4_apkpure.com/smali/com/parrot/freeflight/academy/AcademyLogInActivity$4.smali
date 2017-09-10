.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;
.super Ljava/lang/Object;
.source "AcademyLogInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/AcademyLogInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$4;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/parrot/freeflight/academy/AcademySignUpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    return-void
.end method
