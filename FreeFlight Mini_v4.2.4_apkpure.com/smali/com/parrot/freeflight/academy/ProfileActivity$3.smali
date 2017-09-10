.class Lcom/parrot/freeflight/academy/ProfileActivity$3;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$3;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$200(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    .line 139
    return-void
.end method
