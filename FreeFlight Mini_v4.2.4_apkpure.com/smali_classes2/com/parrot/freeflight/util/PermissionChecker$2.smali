.class Lcom/parrot/freeflight/util/PermissionChecker$2;
.super Ljava/lang/Object;
.source "PermissionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/util/PermissionChecker;->showPermissionRequestDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/util/PermissionChecker;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/util/PermissionChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/util/PermissionChecker;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/util/PermissionChecker$2;->this$0:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker$2;->this$0:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-static {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->access$000(Lcom/parrot/freeflight/util/PermissionChecker;)Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker$2;->this$0:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-static {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->access$000(Lcom/parrot/freeflight/util/PermissionChecker;)Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/util/PermissionChecker$Listener;->onPermissionsChanged(ZLjava/util/Map;)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker$2;->this$0:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/PermissionChecker;->access$002(Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/util/PermissionChecker$Listener;)Lcom/parrot/freeflight/util/PermissionChecker$Listener;

    .line 118
    :cond_0
    return-void
.end method
