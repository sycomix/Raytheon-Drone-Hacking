.class Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;
.super Ljava/lang/Object;
.source "ProfileEditPage2View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileEditPage2View;->setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileEditPage2View;

.field final synthetic val$localCalendar:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileEditPage2View;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->val$localCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->this$0:Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;)V

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->val$localCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->val$localCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;->val$localCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 88
    .local v0, "datePickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 89
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 90
    return-void
.end method
