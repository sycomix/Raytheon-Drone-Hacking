.class Lcom/parrot/freeflight/academy/AcademyLogInActivity$1;
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
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$1;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/academy/AcademyLogInActivity$1;->this$0:Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/academy/AcademyLogInActivity;->access$000(Lcom/parrot/freeflight/academy/AcademyLogInActivity;Ljava/lang/String;)V

    .line 126
    return-void
.end method
