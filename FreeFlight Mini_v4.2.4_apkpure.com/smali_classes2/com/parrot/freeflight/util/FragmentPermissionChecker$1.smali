.class Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;
.super Ljava/lang/Object;
.source "FragmentPermissionChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/util/FragmentPermissionChecker;->showPermissionRequestDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/util/FragmentPermissionChecker;Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;->this$0:Lcom/parrot/freeflight/util/FragmentPermissionChecker;

    iput-object p2, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/parrot/freeflight/util/FragmentPermissionChecker$1;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 116
    return-void
.end method
