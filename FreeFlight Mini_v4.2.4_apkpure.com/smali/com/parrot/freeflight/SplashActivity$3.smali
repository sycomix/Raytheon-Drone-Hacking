.class Lcom/parrot/freeflight/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/SplashActivity;->showPermissionRequestDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/SplashActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/parrot/freeflight/SplashActivity$3;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity$3;->this$0:Lcom/parrot/freeflight/SplashActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/SplashActivity;->finish()V

    .line 169
    return-void
.end method
