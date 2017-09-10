.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$3;
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
    .line 163
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$3;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$3;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$100(Lcom/parrot/freeflight/academy/AcademyLogInActivity;)V

    .line 167
    return-void
.end method
