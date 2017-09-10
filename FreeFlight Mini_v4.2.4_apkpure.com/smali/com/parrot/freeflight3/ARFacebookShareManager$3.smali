.class Lcom/parrot/freeflight3/ARFacebookShareManager$3;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/ARFacebookShareManager;->signIn(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$3;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager$3;->this$0:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->updateUserLogin()V

    .line 125
    return-void
.end method
