.class public Lcom/parrot/freeflight/academy/ProfileEditPage2View;
.super Landroid/widget/FrameLayout;
.source "ProfileEditPage2View.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileEditPage2View"


# instance fields
.field private final mBirthday:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEmail:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFullDateFormat:Ljava/text/DateFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhone:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWebsite:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const v0, 0x7f040038

    invoke-static {p1, v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f0f016a

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mFullDateFormat:Ljava/text/DateFormat;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditPage2View;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mFullDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/ProfileEditPage2View;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditPage2View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/widget/TextView;)V

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/EditText;)V

    .line 132
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public notifyChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 0
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    return-void
.end method

.method public setData(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "localCalendar":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mFullDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    new-instance v2, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;

    invoke-direct {v2, p0, v0}, Lcom/parrot/freeflight/academy/ProfileEditPage2View$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditPage2View;Ljava/util/Calendar;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .end local v0    # "localCalendar":Ljava/util/Calendar;
    :cond_2
    return-void
.end method

.method public updateEditedProfile(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    if-eqz p1, :cond_3

    .line 98
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->setEmail(Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setPhone(Ljava/lang/String;)V

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mWebsite:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setWebsite(Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mFullDateFormat:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditPage2View;->mBirthday:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 110
    .local v0, "birthDate":Ljava/util/Date;
    invoke-virtual {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->setBirthDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "birthDate":Ljava/util/Date;
    :cond_3
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/text/ParseException;
    const-string v2, "ProfileEditPage2View"

    const-string v3, "Error parsing birthday"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
