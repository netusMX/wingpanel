/*
 * vala-panel
 * Copyright (C) 2018 Konstantin Pugin <ria.freelander@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

[CCode(cheader_filename="matcher.h")]
public class ValaPanel.Matcher : GLib.Object
{
    [CCode (has_construct_function = false)]
    private Matcher();
    public static Matcher @get();
    public unowned GLib.DesktopAppInfo match_arbitrary(string class, string group, string gtk_id, int pid);
}

[CCode(cheader_filename="libwnck-aux.h")]
public unowned GLib.DesktopAppInfo libwnck_aux_match_wnck_window(ValaPanel.Matcher matcher, Wnck.Window win);
public string libwnck_aux_get_utf8_prop(ulong xid, string prop);
