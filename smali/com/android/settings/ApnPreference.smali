.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const v0, 0x7f010012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, view:Landroid/view/View;
    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, widget:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 61
    check-cast v1, Landroid/widget/RadioButton;

    .line 62
    .local v1, rb:Landroid/widget/RadioButton;
    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    .line 63
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 67
    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 71
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 72
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 79
    .end local v0           #isChecked:Z
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, textLayout:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_2
    return-object v3

    .line 75
    .end local v2           #textLayout:Landroid/view/View;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    if-eqz p2, :cond_2

    .line 102
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 105
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 110
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/high16 v3, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, pos:I
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 120
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #pos:I
    .end local v2           #url:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 127
    return-void
.end method
