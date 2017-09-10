.class Lcom/parrot/freeflight/academy/ProfileActivity$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$2;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->onBackPressed()V

    .line 130
    return-void
.end method
