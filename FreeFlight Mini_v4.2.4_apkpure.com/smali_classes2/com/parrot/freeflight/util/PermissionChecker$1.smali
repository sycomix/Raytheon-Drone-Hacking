.class Lcom/parrot/freeflight/util/PermissionChecker$1;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/util/PermissionChecker;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/util/PermissionChecker;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/util/PermissionChecker$1;->this$0:Lcom/parrot/freeflight/util/PermissionChecker;

    iput-object p2, p0, Lcom/parrot/freeflight/util/PermissionChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/parrot/freeflight/util/PermissionChecker$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/util/PermissionChecker$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/parrot/freeflight/util/PermissionChecker$1;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 109
    return-void
.end method
